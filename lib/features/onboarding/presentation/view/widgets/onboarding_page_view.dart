import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_assets.dart';
import 'package:kabar_app/features/onboarding/presentation/models/onboarding_model.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_image.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/onboarding_info_section.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  PageController pageController = PageController();
  int currentIndex = 0;
  List<OnboardingModel> items = [
    const OnboardingModel(
      image: Assets.imagesOnboarding1,
    ),
    const OnboardingModel(
      image: Assets.imagesOnboarding2,
    ),
    const OnboardingModel(
      image: Assets.imagesOnboarding3,
    ),
  ];
  @override
  void initState() {
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            OnBoardingImage(
              onboardingModel: items[index],
            ),
            Expanded(
              child: OnBoardingInfoSection(
                currentIndex: currentIndex,
                pageController: pageController,
              ),
            ),
          ],
        );
      },
    );
  }
}
