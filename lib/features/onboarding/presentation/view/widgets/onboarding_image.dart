import 'package:flutter/material.dart';
import 'package:kabar_app/features/onboarding/presentation/models/onboarding_model.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.63,
      width: double.infinity,
      child: Image.asset(
        onboardingModel.image,
        fit: BoxFit.fill,
      ),
    );
  }
}
