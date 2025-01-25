import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_colors.dart';
import 'package:kabar_app/core/utils/app_styles.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/custom_box.dart';

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBox(),
        const SizedBox(
          width: 4,
        ),
        Text(
          'Remember me',
          style: AppStyles.styleRegular14(),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Forgot the password ?',
            style: AppStyles.styleRegular14().copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
