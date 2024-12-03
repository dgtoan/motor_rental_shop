import 'package:get/get.dart';
import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/repositories/motorbike_repository.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/widgets/app_alert.dart';

class MotorInfoController {
  final motorbikeRepository = MotorbikeRepository();

  Future createMotor(Motorbike motorbike) async {
    final error = await motorbikeRepository.createMotor(motorbike);

    if (error != null) {
      AppAlert.showError('Create motor failed', error);
    } else {
      AppAlert.showSuccess(
          'Create motor success', 'Motor created successfully');
      Get.back();
    }
  }

  Future updateMotor(Motorbike motorbike) async {
    final error = await motorbikeRepository.updateMotor(motorbike);

    if (error != null) {
      AppAlert.showError('Update motor failed', error);
    } else {
      SessionStorageService.removeListSearchMotorbike();
      SessionStorageService.removeCurrentEditMotor();
      SessionStorageService.removeEditMotorId();
      Get.offNamed('/MotorManagementView.dart');
      AppAlert.showSuccess(
          'Update motor success', 'Motor updated successfully');
    }
  }
}
