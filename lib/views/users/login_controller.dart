import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/user_repository.dart';
import 'package:motor_rental_shop/models/user.dart';

class DoLogin {
  final UserDAO userDAO = UserDAO();
  Future<void> call(User user) async {
    final currentManager = await userDAO.checkLogin(user);

    if (currentManager == null) {
      Get.snackbar(
        'Login failed',
        'Username or password is incorrect',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16),
        maxWidth: 360,
      );
      return;
    }

    window.sessionStorage['currentManager'] = jsonEncode(currentManager.toJson());
    Get.offNamed('/ManagerView.dart');
  }
}
