import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class AuthSwitcher extends StatelessWidget {
  const AuthSwitcher({
    super.key,
    required this.auth,
    this.onTap,
    required this.title,
  });
  final String title, auth;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.styleRegular14(),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            auth,
            style: AppStyles.styleSimiBold14(),
          ),
        ),
      ],
    );
  }
}
