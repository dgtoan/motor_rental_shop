import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/auth_middleware.dart';
import 'package:motor_rental_shop/global_middleware.dart';
import 'package:motor_rental_shop/views/managers/manager_view.dart';
import 'package:motor_rental_shop/views/managers/motor_management/edit_motor_jnfo.dart';
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

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Motor Rental Shop',
      initialRoute: '/LoginView.dart',
      unknownRoute: () {
        if (window.sessionStorage['currentManager'] != null) {
          return GetPage(
              name: '/ManagerView.dart', page: () => const ManagerView());
        }
        return GetPage(name: '/LoginView.dart', page: () => LoginView());
      }(),
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
          page: () => const EditMotorInfo(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/SearchContractView.dart',
          page: () => const SearchContractView(),
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
    );
  }
}
