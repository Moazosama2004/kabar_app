import 'package:flutter/material.dart';
import 'package:kabar_app/core/utils/app_colors.dart';

abstract class AppStyles {
  static TextStyle styleRegular16() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSimiBold16() {
    return TextStyle(
      color: AppColors.darkColor,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular13() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 13,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSimiBold13() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 13,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold32() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 32,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold48() {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: 48,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular20() {
    return TextStyle(
      color: AppColors.deepgrayColor,
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold24() {
    return TextStyle(
      color: AppColors.darkColor,
      fontSize: 24,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular24() {
    return TextStyle(
      color: AppColors.darkColor,
      fontSize: 24,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }
}
