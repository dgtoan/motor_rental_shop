import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/user_repository.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/widgets/app_alert.dart';

class RegisterController {
  final UserRepository userRepository = UserRepository();

  Future<void> register(User user) async {
    final result = await userRepository.register(user);

    result.fold(
      (newUser) {
        AppAlert.showSuccess('Register success', 'Welcome, ${newUser.name}');
        SessionStorageService.setCurrentUser(newUser);
        Get.offNamed('/ManagerView.dart');
      },
      (error) => AppAlert.showError('Register failed', error),
    );
  }
}
