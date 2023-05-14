import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final String hinText;
  final bool obscureText;
  final Widget prefixIcon;

  const CustomTextField({
    super.key,
    required this.keyboardType,
    required this.textInputAction,
    required this.controller,
    required this.hinText,
    required this.obscureText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        controller: controller,
        decoration: InputDecoration(
          hintText: hinText,
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
