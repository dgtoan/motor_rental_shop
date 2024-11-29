import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:motor_rental_shop/models/user_role.dart';
import 'package:motor_rental_shop/repositories/pocketbase_service.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:pocketbase/pocketbase.dart';

class UserDAO extends DAO {
  Future<Either<User, String>> checkLogin(User user) async {
    final email = user.email;
    final password = user.password;

    if (email == null ||
        password == null ||
        email.isEmpty ||
        password.isEmpty) {
      return right('All fields are required');
    }

    try {
      final authRecord =
          await con.collection('users').authWithPassword(email, password);
      return left(User.fromJson(authRecord.record.data));
    } on ClientException catch (clientException) {
      debugPrint(clientException.toString());
      return right(clientException.response['message']);
    } catch (e) {
      debugPrint(e.toString());
      return right('An error occurred');
    }
  }

  Future<Either<User, String>> create(User user) async {
    if (user.email == null ||
        user.password == null ||
        user.name == null ||
        user.username == null ||
        user.email!.isEmpty ||
        user.password!.isEmpty ||
        user.name!.isEmpty ||
        user.username!.isEmpty) {
      return right('All fields are required');
    }

    try {
      final body = user.toJson();
      body['passwordConfirm'] = user.password;
      body['role'] = UserRole.manager.name;
      final record = await con.collection('users').create(body: body);
      return left(User.fromJson(record.data));
    } on ClientException catch (clientException) {
      debugPrint(clientException.toString());
      return right(clientException.response['message']);
    } catch (e) {
      debugPrint(e.toString());
      return right('An error occurred');
    }
  }
}
