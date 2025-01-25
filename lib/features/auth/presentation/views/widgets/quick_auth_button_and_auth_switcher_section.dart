import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/auth_switcher.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/custom_quick_auth_button_section.dart';

class QuickAuthButtonAndAuthSwitcherSection extends StatelessWidget {
  const QuickAuthButtonAndAuthSwitcherSection({
    super.key,
    required this.title,
    required this.auth,
    this.onTap,
  });
  final String title, auth;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'or continue with',
          style: AppStyles.styleRegular14(),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomQuickAuthButtonSection(),
        const SizedBox(
          height: 16,
        ),
        AuthSwitcher(
          title: title,
          auth: auth,
          onTap: onTap,
        )
      ],
    );
  }
}
