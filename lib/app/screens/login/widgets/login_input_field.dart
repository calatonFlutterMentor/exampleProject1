import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const LoginInputField(
      {super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
