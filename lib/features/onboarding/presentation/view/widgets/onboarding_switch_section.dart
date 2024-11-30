import 'package:flutter/material.dart';

import 'package:kabar_app/features/onboarding/presentation/view/widgets/dots_indicator.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_button_section.dart';

class OnBoardingSwitchSection extends StatelessWidget {
  const OnBoardingSwitchSection({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });
  final PageController pageController;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DotsIndicator(
          currentIndex: currentIndex,
        ),
        const Spacer(),
        OnBoardingButtonSection(
          currentIndex: currentIndex,
          pageController: pageController,
        )
      ],
    );
  }
}
