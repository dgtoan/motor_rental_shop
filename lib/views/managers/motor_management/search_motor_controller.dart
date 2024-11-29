import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/motorbike_repository.dart';

class SearchMotorController {
  final MotorbikeDAO motorbikeDAO = MotorbikeDAO();

  Future<void> call(String motorSearchName) async {
    window.sessionStorage['motorSearchName'] = motorSearchName;

    final listSearchMotorbike = await motorbikeDAO.searchMotor(motorSearchName);

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

    window.sessionStorage['listSearchMotorbike'] =
        jsonEncode(listSearchMotorbike);
    Get.offNamed('/MotorManagementView.dart?motor=$motorSearchName');
  }
}
