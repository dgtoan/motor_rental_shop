import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/auth_middleware.dart';
import 'package:motor_rental_shop/global_middleware.dart';
import 'package:motor_rental_shop/views/managers/ManagerView.dart';
import 'package:motor_rental_shop/views/managers/motor_management/EditMotorInfo.dart';
import 'package:motor_rental_shop/views/managers/motor_management/ListMotorView.dart';
import 'package:motor_rental_shop/views/managers/motor_management/MotorManagementView.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/ListRevenueView.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/RevenueDetailView.dart';
import 'package:motor_rental_shop/views/managers/revenue_statistic/RevenueFilterView.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/ConfirmSaveContractView.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/ContractDetailView.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/ListContractView.dart';
import 'package:motor_rental_shop/views/managers/sign_contract/SearchContractView.dart';
import 'package:motor_rental_shop/views/users/LoginView.dart';
import 'package:motor_rental_shop/views/users/RegisterView.dart';

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
