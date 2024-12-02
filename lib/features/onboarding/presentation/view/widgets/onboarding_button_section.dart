import 'package:flutter/material.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_custom_button.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_custom_text_button.dart';

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
            ? OnBoardingCustomTextButton(pageController: pageController)
            : const SizedBox(),
        const SizedBox(
          width: 10,
        ),
        OnBoardingCustomButton(
          title: currentIndex == 2 ? 'Get Started' : 'Next',
          onPressed: () => pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn,
          ),
        ),
      ],
    );
  }
}
