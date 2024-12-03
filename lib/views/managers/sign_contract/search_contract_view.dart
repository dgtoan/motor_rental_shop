import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/contract.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/search_contract_controller.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

class SearchContractView extends StatelessWidget {
  SearchContractView({super.key});

  final isLoading = false.obs;

  late final String? customerSearchName;
  late final List<Contract>? listSearchContract;

  final TextEditingController searchController = TextEditingController();

  Future<void> onSearch(String customerSearchName) async {
    isLoading.value = true;
    debugPrint('Searching for $customerSearchName');
    await SearchContractController().searchContract(customerSearchName);
    isLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    customerSearchName = Get.parameters['customer'];
    if (customerSearchName != null) {
      searchController.text = customerSearchName!;
      listSearchContract = SessionStorageService.getListSearchContract();
    } else {
      listSearchContract = null;
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search Contract'),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: SearchBar(
                      controller: searchController,
                      hintText: 'Customer name',
                      trailing: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () => onSearch(searchController.text),
                        ),
                      ],
                      onSubmitted: onSearch,
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (listSearchContract != null)
                    Expanded(
                      child: InteractiveViewer(
                        constrained: false,
                        child: DataTable(
                          dataRowMaxHeight: 80,
                          columns: [
                            DataColumn(
                                label: Text(
                              'Action',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'Contract ID',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'Customer Name',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'Customer Phone',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'Created Date',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'List Rental Motor',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                            DataColumn(
                                label: Text(
                              'Status',
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                          ],
                          rows: [
                            for (final contract in listSearchContract!)
                              DataRow(
                                cells: [
                                  DataCell(
                                    Row(
                                      children: [
                                        IconButton(
                                            icon: const Icon(
                                                Icons.assignment_add),
                                            onPressed: () {
                                              // SessionStorageService.setCurrentEditContract(contract);
                                              // Get.toNamed(
                                              //   '/EditContractInfo.dart?id=${contract.id}',
                                              // );
                                            }),
                                      ],
                                    ),
                                  ),
                                  DataCell(Text(contract.id ?? '')),
                                  DataCell(Text(contract.customer?.name ?? '')),
                                  DataCell(Text(contract.customer?.tel ?? '')),
                                  DataCell(Text(
                                      contract.createDate?.toString() ?? '')),
                                  DataCell(
                                    Column(
                                      children: [
                                        for (final motorbikeContract
                                            in contract.listMotorbikeContract!)
                                          Text(motorbikeContract
                                                  .motorbike?.name ??
                                              ''),
                                      ],
                                    ),
                                  ),
                                  DataCell(Text(contract.status ?? '')),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            LoadingView(isLoading: isLoading, color: Colors.transparent),
          ],
        ));
  }
}
