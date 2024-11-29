import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/views/users/login_controller.dart';
import 'package:motor_rental_shop/views/widgets/custom_text_field.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final RxBool isLoading = false.obs;
  final RxBool obscureText = true.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 360,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 50,
                          offset: Offset(0, 24),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          CustomTextField(
                            controller: emailController,
                            label: 'Username or Email',
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            controller: passwordController,
                            label: 'Password',
                            obscureText: obscureText,
                            suffixIcon: IconButton(
                              onPressed: () => {obscureText.toggle()},
                              icon: Obx(() => Icon(
                                    obscureText.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: FilledButton(
                              onPressed: () async {
                                isLoading.value = true;
                                await LoginController().login(User(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ));
                                isLoading.value = false;
                              },
                              child: const Text('Login'),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account?'),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/RegisterView.dart');
                                },
                                child: const Text('Register'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          LoadingView(isLoading: isLoading)
        ],
      ),
    );
  }
}
