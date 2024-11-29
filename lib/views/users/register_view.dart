import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motor_rental_shop/models/user.dart';
import 'package:motor_rental_shop/views/users/register_controller.dart';
import 'package:motor_rental_shop/views/widgets/custom_text_field.dart';
import 'package:motor_rental_shop/views/widgets/loading_view.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final RxBool isLoading = false.obs;
  final RxBool obscureText = true.obs;
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                          const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          CustomTextField(
                            controller: fullnameController,
                            label: 'Fullname',
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            controller: emailController,
                            label: 'Email',
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            controller: usernameController,
                            label: 'Username',
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
                          const SizedBox(height: 16),
                          CustomTextField(
                            controller: confirmPasswordController,
                            label: 'Confirm Password',
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
                                if (passwordController.text !=
                                    confirmPasswordController.text) {
                                  Get.snackbar(
                                    'Register failed',
                                    'Password and confirm password must be the same',
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                    margin: const EdgeInsets.all(16),
                                    maxWidth: 360,
                                  );
                                  isLoading.value = false;
                                  return;
                                }
                                await RegisterController().call(User(
                                  name: fullnameController.text,
                                  email: emailController.text,
                                  username: usernameController.text,
                                  password: passwordController.text,
                                ));
                                isLoading.value = false;
                              },
                              child: const Text('Register'),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have an account?'),
                              TextButton(
                                onPressed: () {
                                  Get.offAllNamed('/LoginView.dart');
                                },
                                child: const Text('Login'),
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
