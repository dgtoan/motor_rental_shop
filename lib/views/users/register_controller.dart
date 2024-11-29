import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/user_repository.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class RegisterController {
  final UserDAO userDAO = UserDAO();

  Future<void> call(User user) async {
    final newUser = await userDAO.create(user);

    if (newUser == null) {
      Get.snackbar(
        'Register failed',
        'Please try again',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16),
        maxWidth: 360,
      );
      return;
    }

    SessionStorageService.setCurrentUser(newUser);
    Get.offNamed('/ManagerView.dart');
  }
}
