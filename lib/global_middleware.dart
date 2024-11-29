import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/services/session_storage_service.dart';

class GlobalMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return SessionStorageService.getCurrentUser() == null
        ? const RouteSettings(name: '/LoginView.dart')
        : null;
  }
}
