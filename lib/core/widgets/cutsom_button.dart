import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_colors.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.authType, this.onPressed});
  final String authType;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          authType,
          style: AppStyles.styleSimiBold16().copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
