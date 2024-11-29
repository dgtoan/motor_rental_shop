import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/user_repository.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/widgets/app_alert.dart';

class LoginController {
  final UserRepository userDAO = UserRepository();
  Future<void> call(User user) async {
    final result = await userDAO.checkLogin(user);

    result.fold(
      (newUser) {
        AppAlert.showSuccess('Login success', 'Welcome, ${newUser.name}');
        SessionStorageService.setCurrentUser(newUser);
        Get.offNamed('/ManagerView.dart');
      },
      (error) => AppAlert.showError('Login failed', error),
    );
  }
}
