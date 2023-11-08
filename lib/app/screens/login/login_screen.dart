import 'package:calaton_project/app/screens/login/widgets/login_input_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_view_model.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  final LoginViewModel viewModel;
  const LoginScreen({super.key, required this.viewModel});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LoginInputField(controller: emailController, hint: 'Login'),
            const SizedBox(
              height: 10,
            ),
            LoginInputField(controller: passwordController, hint: 'Password'),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                widget.viewModel.startLoading();
                 widget.viewModel.onLoginButtonPressed(
                  emailController.text.toString(),
                  passwordController.text.toString(),
                );
               widget.viewModel.stopLoading();

               //

              },
              child: Container(
                height: 60,
                padding: const EdgeInsets.all(7),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 85, 173, 213),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
