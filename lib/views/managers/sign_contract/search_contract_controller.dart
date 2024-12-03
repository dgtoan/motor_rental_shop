import 'package:get/get.dart';
import 'package:motor_rental_shop/repositories/contract_repository.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/widgets/app_alert.dart';

class SearchContractController {
  final contractRepository = ContractRepository();
  Future searchContract(String customerSearchName) async {
    SessionStorageService.setCustomerSearchName(customerSearchName);

    final result = await contractRepository.searchContract(customerSearchName);

    result.fold(
      (listSearchContract) {
        SessionStorageService.setListSearchContract(listSearchContract);
        Get.offNamed('/SearchContractView.dart?customer=$customerSearchName');
      },
      (error) => AppAlert.showError('Search contract failed', error),
    );
  }
}
