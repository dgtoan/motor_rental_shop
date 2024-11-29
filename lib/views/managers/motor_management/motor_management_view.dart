import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/views/managers/motor_management/search_motor_controller.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

class MotorManagementView extends StatelessWidget {
  MotorManagementView({super.key});

  final TextEditingController searchController = TextEditingController();
  final isLoading = false.obs;

  Future<void> onSearch(String motorSearchName) async {
    isLoading.value = true;
    debugPrint('Searching for $motorSearchName');
    await SearchMotorController().call(motorSearchName);
    isLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motor Management'),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 640),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SearchBar(
                  controller: searchController,
                  hintText: 'Motor Name',
                  trailing: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => onSearch(searchController.text),
                    ),
                  ],
                  onSubmitted: onSearch,
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
