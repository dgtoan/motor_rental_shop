import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    final TextStyle? style,
    final Rx<bool>? obscureText,
    this.textInputAction = TextInputAction.next,
    this.keyboardType,
    final Rxn<String>? errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.onChanged,
  }) {
    this.obscureText = obscureText ?? false.obs;
    this.errorText = errorText ?? Rxn(null);
  }

  final TextEditingController controller;
  final String label;
  late final Rx<bool> obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  late final Rxn<String> errorText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => TextField(
            controller: controller,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            autocorrect: false,
            obscureText: obscureText.value,
            maxLines: maxLines,
            decoration: InputDecoration(
              label: Text(label),
              labelStyle: WidgetStateTextStyle.resolveWith((states) {
                final color = states.contains(WidgetState.focused)
                    ? Theme.of(context).primaryColor
                    : Colors.grey;
                return TextStyle(color: color);
              }),
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      color: Colors.grey,
                    )
                  : null,
              suffixIcon: suffixIcon,
              errorText: errorText.value,
              errorMaxLines: 2,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
