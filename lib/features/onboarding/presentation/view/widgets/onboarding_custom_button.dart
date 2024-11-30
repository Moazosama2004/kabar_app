import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class OnBoardingCustomButton extends StatelessWidget {
  const OnBoardingCustomButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
      decoration: ShapeDecoration(
        color: const Color(0xFF1877F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: AppStyles.styleSimiBold16().copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
