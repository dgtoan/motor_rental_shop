import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
    required this.isLoading,
  });

  final RxBool isLoading;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: isLoading.value,
        child: Container(
          color: Colors.black12,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
