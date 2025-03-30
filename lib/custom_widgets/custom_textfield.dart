import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.trailingIcon,
    this.onTrailingIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
      child: TextField(
        cursorHeight: 56,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          suffixIcon: trailingIcon != null
              ? IconButton(
                  icon: Icon(trailingIcon),
                  onPressed: onTrailingIconPressed,
                )
              : null,
        ),
      ),
    );
  }
}
