import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/managers/motor_management/motor_management_controller.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

class MotorManagementView extends StatelessWidget {
  MotorManagementView({super.key});

  final TextEditingController searchController = TextEditingController();
  final isLoading = false.obs;

  late final String? motorSearchName;
  late final List<Motorbike>? listSearchMotorbike;

  Future<void> onSearch(String motorSearchName) async {
    isLoading.value = true;
    debugPrint('Searching for $motorSearchName');
    await MotorManagementController().searchMotor(motorSearchName);
    isLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    motorSearchName = Get.parameters['motor'];
    if (motorSearchName != null) {
      searchController.text = motorSearchName!;
      listSearchMotorbike = SessionStorageService.getListSearchMotorbike();
    } else {
      listSearchMotorbike = null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Motor Management'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ElevatedButton.icon(
              onPressed: () => Get.toNamed('/AddMotor.dart'),
              icon: const Icon(Icons.add),
              label: const Text('Add Motor'),
            ),
          ),
        ],
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
                    hintText: 'Motor name',
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
                if (listSearchMotorbike != null)
                  Expanded(
                    child: InteractiveViewer(
                      constrained: false,
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            'Action',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Name',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'License Plate',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Type',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Year of Manufacture',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Daily Rental Price',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Deposit',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Color',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Rental Status',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Motorbike Status',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                          DataColumn(
                              label: Text(
                            'Description',
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                        ],
                        rows: [
                          for (final motorbike in listSearchMotorbike!)
                            DataRow(
                              cells: [
                                DataCell(
                                  Row(
                                    children: [
                                      IconButton(
                                          icon: const Icon(Icons.edit),
                                          onPressed: () {
                                            SessionStorageService.setCurrentEditMotor(motorbike);
                                            Get.toNamed(
                                              '/EditMotorInfo.dart?id=${motorbike.id}',
                                            );
                                          }),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () async {
                                          final isDelete =
                                              await Get.dialog<bool>(
                                            AlertDialog(
                                              title: const Text('Delete Motor'),
                                              content: const Text(
                                                  'Are you sure you want to delete this motor?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Get.back(result: false),
                                                  child: const Text('Cancel'),
                                                ),
                                                Theme(
                                                  data: ThemeData(
                                                    colorScheme:
                                                        ColorScheme.fromSeed(
                                                      seedColor: Colors.red,
                                                    ),
                                                  ),
                                                  child: FilledButton(
                                                    onPressed: () =>
                                                        Get.back(result: true),
                                                    child: const Text('Delete'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );

                                          if (isDelete == true) {
                                            isLoading.value = true;
                                            await MotorManagementController()
                                                .deleteMotor(motorbike);
                                            isLoading.value = false;
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                DataCell(Text(motorbike.name ?? '')),
                                DataCell(Text(motorbike.licensePlace ?? '')),
                                DataCell(Text(motorbike.type ?? '')),
                                DataCell(Text(
                                    motorbike.yearOfManufacture?.toString() ??
                                        '')),
                                DataCell(Text(
                                    motorbike.dailyRentalPrice?.toString() ??
                                        '')),
                                DataCell(
                                    Text(motorbike.deposit?.toString() ?? '')),
                                DataCell(Text(motorbike.color ?? '')),
                                DataCell(Text(motorbike.rentalStatus ?? '')),
                                DataCell(Text(motorbike.motorbikeStatus ?? '')),
                                DataCell(Text(motorbike.description ?? '')),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          LoadingView(
            isLoading: isLoading,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
