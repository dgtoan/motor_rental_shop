import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/motorbike_repository.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class SearchMotorController {
  final MotorbikeRepository motorbikeRepository = MotorbikeRepository();

  Future<void> searchMotor(String motorSearchName) async {
    SessionStorageService.setMotorSearchName(motorSearchName);

    final listSearchMotorbike =
        await motorbikeRepository.searchMotor(motorSearchName);

    if (listSearchMotorbike == null) {
      Get.snackbar(
        'Search failed',
        'Motorbike not found',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16),
        maxWidth: 360,
      );
      return;
    }

    SessionStorageService.setListSearchMotorbike(listSearchMotorbike);
    Get.offNamed('/MotorManagementView.dart?motor=$motorSearchName');
  }
}
