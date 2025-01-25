import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class LoginWelcomeTextSection extends StatelessWidget {
  const LoginWelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello',
          style: AppStyles.styleBold48().copyWith(
            color: Colors.black,
          ),
        ),
        Text(
          'Again!',
          style: AppStyles.styleBold48(),
        ),
        Text(
          'Welcome back you’ve\nbeen missed',
          style: AppStyles.styleRegular20(),
        ),
      ],
    );
  }
}
