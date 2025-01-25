import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.suffixIcon,
    this.obscureText = false,
  });
  final String title;
  final Widget? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required';
        } else {
          return null;
        }
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: title,
        enabledBorder: borderBuilder(),
        border: borderBuilder(),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: AppColors.deepgrayColor,
      ),
    );
  }
}
