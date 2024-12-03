import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';
import 'package:motor_rental_shop/views/managers/manager_view.dart';
import 'package:motor_rental_shop/views/managers/motor_management/motor_info_view.dart';
import 'package:motor_rental_shop/views/managers/motor_management/list_motor_view.dart';
import 'package:motor_rental_shop/views/managers/motor_management/motor_management_view.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/list_revenue_view.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/revenue_detail_view.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/revenue_filter_view.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/confirm_save_contract_view.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/contract_detail_view.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/list_contract_view.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/search_contract_view.dart';
import 'package:motor_rental_shop/views/users/login_view.dart';
import 'package:motor_rental_shop/views/users/register_view.dart';
import 'package:motor_rental_shop/scaffold_with_nav.dart';

Future main() async {
  await dotenv.load(fileName: 'dotenv');
  Get.put(NavController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Motor Rental Shop',
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 0),
      initialRoute: '/LoginView.dart',
      getPages: [
        GetPage(
          name: '/LoginView.dart',
          page: () => LoginView(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: '/RegisterView.dart',
          page: () => RegisterView(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: '/ManagerView.dart',
          page: () => const ManagerView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/MotorManagementView.dart',
          page: () => MotorManagementView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/ListMotorView.dart',
          page: () => const ListMotorView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/EditMotorInfo.dart',
          page: () => MotorInfoView(type: MotorInfoType.update),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/AddMotor.dart',
          page: () => MotorInfoView(type: MotorInfoType.create),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/SearchContractView.dart',
          page: () => SearchContractView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/ListContractView.dart',
          page: () => const ListContractView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/ContractDetailView.dart',
          page: () => const ContractDetailView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/ConfirmSaveContractView.dart',
          page: () => const ConfirmSaveContractView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/RevenueFilterView.dart',
          page: () => const RevenueFilterView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/ListRevenueView.dart',
          page: () => const ListRevenueView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/RevenueDetailView.dart',
          page: () => const RevenueDetailView(),
          middlewares: [GlobalMiddleware()],
        ),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      navigatorObservers: [
        MyNavigatorObserver(),
      ],
      builder: (context, child) {
        return ScaffoldWithNav(
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return SessionStorageService.getCurrentUser() != null
        ? const RouteSettings(name: '/ManagerView.dart')
        : null;
  }
}

class GlobalMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return SessionStorageService.getCurrentUser() == null
        ? const RouteSettings(name: '/LoginView.dart')
        : null;
  }
}

class MyNavigatorObserver extends GetObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    updateNav(route.settings.name);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    updateNav(previousRoute?.settings.name);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    updateNav(newRoute?.settings.name);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    updateNav(previousRoute?.settings.name);
  }

  void updateNav(String? routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('Current route: $routeName');
      final controller = Get.find<NavController>();
      final index = getRouteIndex(routeName);
      controller.selectedIndex.value = index;
      if (index != 4) {
        controller.showDrawer.value = true;
      } else {
        controller.showDrawer.value = false;
      }
    });
  }

  int getRouteIndex(String? routeName) {
    if (routeName?.startsWith('/ManagerView.dart') == true) {
      return 0;
    } else if (routeName?.startsWith('/MotorManagementView.dart') == true ||
        routeName?.startsWith('/ListMotorView.dart') == true ||
        routeName?.startsWith('/EditMotorInfo.dart') == true ||
        routeName?.startsWith('/AddMotor.dart') == true) {
      return 1;
    } else if (routeName?.startsWith('/SearchContractView.dart') == true ||
        routeName?.startsWith('/ListContractView.dart') == true ||
        routeName?.startsWith('/ContractDetailView.dart') == true ||
        routeName?.startsWith('/ConfirmSaveContractView.dart') == true) {
      return 2;
    } else if (routeName?.startsWith('/RevenueFilterView.dart') == true ||
        routeName?.startsWith('/ListRevenueView.dart') == true ||
        routeName?.startsWith('/RevenueDetailView.dart') == true) {
      return 3;
    } else if (routeName == null) {
      return -1;
    }

    return 4;
  }
}
