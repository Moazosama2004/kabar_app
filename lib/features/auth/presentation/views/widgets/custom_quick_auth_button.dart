import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kabar_app/core/utils/app_colors.dart';
import 'package:kabar_app/core/utils/app_styles.dart';

class CustomQuickAuthButton extends StatelessWidget {
  const CustomQuickAuthButton(
      {super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            backgroundColor: const Color(0xFFEEF1F4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: AppStyles.styleSimiBold16().copyWith(
                  color: AppColors.grayColor,
                ),
              ),
            ],
          )),
    );
  }
}
