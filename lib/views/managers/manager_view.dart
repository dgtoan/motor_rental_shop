import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class ManagerView extends StatelessWidget {
  const ManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentManager = SessionStorageService.getCurrentUser();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager View'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, ${currentManager?.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed('/MotorManagementView.dart');
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Motor Management',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/SearchContractView.dart');
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Sign Contract',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/RevenueFilterView.dart');
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Revenue Statistics',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
