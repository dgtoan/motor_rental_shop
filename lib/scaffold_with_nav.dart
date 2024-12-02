import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class NavController extends GetxController {
  final selectedIndex = 0.obs;
  final showDrawer = true.obs;

  void onDestinationSelected(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.toNamed('/ManagerView.dart');
        break;
      case 1:
        Get.toNamed('/MotorManagementView.dart');
        break;
      case 2:
        Get.toNamed('/SearchContractView.dart');
        break;
      case 3:
        Get.toNamed('/RevenueFilterView.dart');
        break;
      case 4:
        SessionStorageService.removeCurrentUser();
        Get.toNamed('/LoginView.dart');
        break;
    }
  }
}

class ScaffoldWithNav extends GetWidget<NavController> {
  const ScaffoldWithNav({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Obx(
            () => controller.showDrawer.value
                ? NavigationDrawer(
                    onDestinationSelected: controller.onDestinationSelected,
                    selectedIndex: controller.selectedIndex.value,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Motor Rental Shop',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.home),
                        label: Text('Manager View'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.motorcycle),
                        label: Text('Motor Management'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.assignment),
                        label: Text('Sign Contract'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.bar_chart),
                        label: Text('Revenue Statistic'),
                      ),
                      Divider(),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.logout),
                        label: Text('Logout'),
                      ),
                    ],
                  )
                : const SizedBox(),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
