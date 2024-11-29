import 'package:flutter/material.dart';
import 'package:motor_rental_shop/repositories/pocketbase_service.dart';
import 'package:motor_rental_shop/models/user.dart';

class UserDAO extends DAO {
  Future<User?> checkLogin(User user) async {
    if (user.email == null || user.password == null) {
      return null;
    }

    try {
      final authRecord = await con.collection('users').authWithPassword(
            user.email!,
            user.password!,
          );
      return User.fromJson(authRecord.record.data);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<User?> create(User user) async {
    try {
      final body = user.toJson();
      body['passwordConfirm'] = user.password;
      final record = await con.collection('users').create(body: body);
      return User.fromJson(record.data);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
