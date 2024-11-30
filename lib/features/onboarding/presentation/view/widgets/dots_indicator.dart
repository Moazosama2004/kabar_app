import 'package:flutter/material.dart';
import 'package:kabar_app/features/onboarding/presentation/view/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(
            isActive: index == currentIndex,
          ),
        ),
      ),
    );
  }
}
