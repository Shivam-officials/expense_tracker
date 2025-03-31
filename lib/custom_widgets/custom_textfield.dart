import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? trailingIcon;
  final IconData? prefixIcon;
  final VoidCallback? onTrailingIconPressed;
  final String? Function(String?)? validator;
  final String? errorText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.trailingIcon,
    this.prefixIcon,
    this.onTrailingIconPressed,
    this.validator,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
      child: TextFormField(
        // cursorHeight: 56,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorText: errorText,
          suffixIcon:
              trailingIcon != null
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
