import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return window.sessionStorage['currentManager'] == null
        ? const RouteSettings(name: '/LoginView.dart')
        : null;
  }
}
