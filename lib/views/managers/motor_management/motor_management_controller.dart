import 'package:get/get.dart';
import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/repositories/motorbike_repository.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/widgets/app_alert.dart';

class MotorManagementController {
  final MotorbikeRepository motorbikeRepository = MotorbikeRepository();

  Future<void> searchMotor(String motorSearchName) async {
    SessionStorageService.setMotorSearchName(motorSearchName);

    final result = await motorbikeRepository.searchMotor(motorSearchName);

    result.fold(
      (listSearchMotorbike) {
        SessionStorageService.setListSearchMotorbike(listSearchMotorbike);
        Get.offNamed('/MotorManagementView.dart?motor=$motorSearchName');
      },
      (error) => AppAlert.showError('Search motor failed', error),
    );
  }

  Future deleteMotor(Motorbike motorbike) async {
    await Future.delayed(const Duration(seconds: 1));
    AppAlert.showSuccess('Delete motor success', 'Motor deleted successfully');
  }
}
