import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class OnBoardingCustomTextButton extends StatelessWidget {
  const OnBoardingCustomTextButton({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      ),
      child: Text(
        'Back',
        style: AppStyles.styleSimiBold16().copyWith(
          color: const Color(0xFFB0B3B8),
        ),
      ),
    );
  }
}
