import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class RegisterWelcomeTextSection extends StatelessWidget {
  const RegisterWelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello', style: AppStyles.styleBold48()),
        Text(
          'Signup to get Started',
          style: AppStyles.styleRegular20(),
        ),
      ],
    );
  }
}
