import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_switch_section.dart';

class OnBoardingInfoSection extends StatelessWidget {
  const OnBoardingInfoSection({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });
  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Lorem Ipsum is simply dummy',
            style: AppStyles.styleBold24(),
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: AppStyles.styleRegular16(),
          ),
          const Spacer(),
          OnBoardingSwitchSection(
            currentIndex: currentIndex,
            pageController: pageController,
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
