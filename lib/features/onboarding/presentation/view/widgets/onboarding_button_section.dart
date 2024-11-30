import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_custom_button.dart';

class OnBoardingButtonSection extends StatelessWidget {
  const OnBoardingButtonSection({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        currentIndex >= 1
            ? GestureDetector(
                onTap: () => pageController.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                ),
                child: Text(
                  'Back',
                  style: AppStyles.styleSimiBold16().copyWith(
                    color: const Color(0xFFB0B3B8),
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () => pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn,
          ),
          child: OnBoardingCustomButton(
            title: currentIndex == 2 ? 'Get Started' : 'Next',
          ),
        ),
      ],
    );
  }
}
