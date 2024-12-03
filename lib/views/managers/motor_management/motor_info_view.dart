import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/managers/motor_management/motor_info_controller.dart';
import 'package:motor_rental_shop/views/widgets/custom_text_field.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

enum MotorInfoType {
  create,
  update,
}

class MotorInfoView extends StatelessWidget {
  MotorInfoView({super.key, required this.type});

  final MotorInfoType type;
  final TextEditingController licensePlateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController yearOfManufactureController =
      TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController motorbikeStatusController =
      TextEditingController();
  final TextEditingController dailyRentalPriceController =
      TextEditingController();
  final TextEditingController depositController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final Rxn<String> licensePlateError = Rxn();
  final Rxn<String> nameError = Rxn();
  final Rxn<String> typeError = Rxn();
  final Rxn<String> yearOfManufactureError = Rxn();
  final Rxn<String> colorError = Rxn();
  final Rxn<String> motorbikeStatusError = Rxn();
  final Rxn<String> dailyRentalPriceError = Rxn();
  final Rxn<String> depositError = Rxn();

  final RxBool isLoading = false.obs;

  bool validate() {
    final licensePlate = licensePlateController.text;
    final name = nameController.text;
    final type = typeController.text;
    final yearOfManufacture = yearOfManufactureController.text;
    final color = colorController.text;
    final motorbikeStatus = motorbikeStatusController.text;
    final dailyRentalPrice = dailyRentalPriceController.text;
    final deposit = depositController.text;

    if (licensePlate.isEmpty) {
      licensePlateError.value = 'License Plate is required';
      return false;
    }
    if (name.isEmpty) {
      nameError.value = 'Name is required';
      return false;
    }
    if (type.isEmpty) {
      typeError.value = 'Type is required';
      return false;
    }
    if (yearOfManufacture.isEmpty) {
      yearOfManufactureError.value = 'Year of Manufacture is required';
      return false;
    }
    if (color.isEmpty) {
      colorError.value = 'Color is required';
      return false;
    }
    if (motorbikeStatus.isEmpty) {
      motorbikeStatusError.value = 'Motorbike Status is required';
      return false;
    }
    if (dailyRentalPrice.isEmpty) {
      dailyRentalPriceError.value = 'Daily Rental Price is required';
      return false;
    }
    if (deposit.isEmpty) {
      depositError.value = 'Deposit is required';
      return false;
    }

    try {
      int.parse(yearOfManufacture);
    } catch (e) {
      yearOfManufactureError.value = 'Year of Manufacture must be a number';
      return false;
    }

    try {
      int.parse(dailyRentalPrice);
    } catch (e) {
      dailyRentalPriceError.value = 'Daily Rental Price must be a number';
      return false;
    }

    try {
      int.parse(deposit);
    } catch (e) {
      depositError.value = 'Deposit must be a number';
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    Motorbike? motorbike;
    if (type == MotorInfoType.update) {
      motorbike = SessionStorageService.getCurrentEditMotor();
      final editMotorId = Get.arguments?['id'];

      if ((motorbike == null || motorbike.id != editMotorId) &&
          editMotorId != null) {
        SessionStorageService.setEditMotorId(editMotorId);
        final listSearchMotorbike =
            SessionStorageService.getListSearchMotorbike();

        if (listSearchMotorbike != null) {
          motorbike = listSearchMotorbike
              .firstWhere((element) => element.id == editMotorId);
          SessionStorageService.setCurrentEditMotor(motorbike);
        }
      }
    } else {
      motorbike = Motorbike(
        id: null,
        name: '',
        licensePlace: '',
        type: '',
        yearOfManufacture: 0,
        dailyRentalPrice: 0,
        deposit: 0,
        color: '',
        rentalStatus: '',
        motorbikeStatus: '',
        description: '',
      );
    }
    debugPrint('motorbike: $motorbike');

    licensePlateController.text = motorbike?.licensePlace ?? '';
    nameController.text = motorbike?.name ?? '';
    typeController.text = motorbike?.type ?? '';
    yearOfManufactureController.text =
        motorbike?.yearOfManufacture?.toString() ?? '';
    colorController.text = motorbike?.color ?? '';
    motorbikeStatusController.text = motorbike?.motorbikeStatus ?? '';
    dailyRentalPriceController.text =
        motorbike?.dailyRentalPrice?.toString() ?? '';
    depositController.text = motorbike?.deposit?.toString() ?? '';
    descriptionController.text = motorbike?.description ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text(type == MotorInfoType.create
            ? 'Create Motor Information'
            : 'Update Motor Information'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 480),
                  child: Column(
                    children: [
                      if (type == MotorInfoType.update) ...[
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'ID: ${motorbike?.id}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Rental Status: ${motorbike?.rentalStatus}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                      CustomTextField(
                        controller: licensePlateController,
                        label: 'License Plate',
                        errorText: licensePlateError,
                        onChanged: (_) {
                          licensePlateError.value = null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: nameController,
                        label: 'Name',
                        errorText: nameError,
                        onChanged: (_) {
                          nameError.value = null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: typeController,
                              label: 'Type',
                              errorText: typeError,
                              onChanged: (_) {
                                typeError.value = null;
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: CustomTextField(
                              controller: yearOfManufactureController,
                              label: 'Year of Manufacture',
                              errorText: yearOfManufactureError,
                              onChanged: (_) {
                                yearOfManufactureError.value = null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: colorController,
                              label: 'Color',
                              errorText: colorError,
                              onChanged: (_) {
                                colorError.value = null;
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: CustomTextField(
                              controller: motorbikeStatusController,
                              label: 'Motorbike Status',
                              errorText: motorbikeStatusError,
                              onChanged: (_) {
                                motorbikeStatusError.value = null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: dailyRentalPriceController,
                        label: 'Daily Rental Price',
                        errorText: dailyRentalPriceError,
                        onChanged: (_) {
                          dailyRentalPriceError.value = null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: depositController,
                        label: 'Deposit',
                        errorText: depositError,
                        onChanged: (_) {
                          depositError.value = null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: descriptionController,
                        label: 'Description',
                        maxLines: 3,
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: OutlinedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Cancel'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 48,
                              child: FilledButton(
                                onPressed: () async {
                                  final isValid = validate();
                                  if (!isValid) {
                                    return;
                                  }
                                  final newMotorbike = motorbike?.copyWith(
                                    licensePlace: licensePlateController.text,
                                    name: nameController.text,
                                    type: typeController.text,
                                    yearOfManufacture: int.parse(
                                        yearOfManufactureController.text),
                                    color: colorController.text,
                                    motorbikeStatus:
                                        motorbikeStatusController.text,
                                    dailyRentalPrice: int.parse(
                                        dailyRentalPriceController.text),
                                    deposit: int.parse(depositController.text),
                                    description: descriptionController.text,
                                  );
                                  if (newMotorbike != null) {
                                    SessionStorageService.setCurrentEditMotor(
                                        newMotorbike);

                                    isLoading.value = true;
                                    if (type == MotorInfoType.create) {
                                      await MotorInfoController()
                                          .createMotor(newMotorbike);
                                    } else {
                                      await MotorInfoController()
                                          .updateMotor(newMotorbike);
                                    }
                                    isLoading.value = false;
                                  }
                                },
                                child: Text(type == MotorInfoType.create
                                    ? 'Create'
                                    : 'Update'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          LoadingView(isLoading: isLoading),
        ],
      ),
    );
  }
}
