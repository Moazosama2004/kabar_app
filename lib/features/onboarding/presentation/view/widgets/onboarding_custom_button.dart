import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_colors.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class OnBoardingCustomButton extends StatelessWidget {
  const OnBoardingCustomButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 13)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          AppColors.primaryColor,
        ),
      ),
      child: Text(
        title,
        style: AppStyles.styleSimiBold16().copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
