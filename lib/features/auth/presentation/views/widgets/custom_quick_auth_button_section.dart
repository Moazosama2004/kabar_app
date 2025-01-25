import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_assets.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/custom_quick_auth_button.dart';

class CustomQuickAuthButtonSection extends StatelessWidget {
  const CustomQuickAuthButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomQuickAuthButton(
            icon: Assets.imagesFacebook,
            title: 'Facebook',
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: CustomQuickAuthButton(
            icon: Assets.imagesGoogle,
            title: 'Google',
          ),
        ),
      ],
    );
  }
}
