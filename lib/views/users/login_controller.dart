import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/user_repository.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class LoginController {
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

    SessionStorageService.setCurrentUser(currentManager);
    Get.offNamed('/ManagerView.dart');
  }
}
