import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
    required this.isLoading,
    this.color = Colors.black12,
  });

  final RxBool isLoading;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: isLoading.value,
        child: Container(
          color: color,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
