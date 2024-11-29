import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return window.sessionStorage['currentManager'] != null
        ? const RouteSettings(name: '/ManagerView.dart')
        : null;
  }
}
