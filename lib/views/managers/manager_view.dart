import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/user.dart';

class ManagerView extends StatelessWidget {
  const ManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentManager = User.fromJson(
      jsonDecode(window.sessionStorage['currentManager'] as String),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager View'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              window.sessionStorage.remove('currentManager');
              Get.offAllNamed('/LoginView.dart');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, ${currentManager.name}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/MotorManagementView.dart');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Motor Management',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/SearchContractView.dart');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Contract',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/RevenueFilterView.dart');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Revenue',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
