import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xffFBFBFB);
  static const Color primaryColor = Color(0xff5A6CEA);
  static const Color whiteColor = Color(0xffffffff);
  static const Color blueColor = Color(0xff1555B7);
  static const Color lightBlue = Color(0xff5765C2);
  static const Color greyColor = Color(0xff5B5B5B);
  static const Color lightGrey = Color(0xffE1E1E1);
  static const Color greyColor2 = Color(0xff7C7C7C);
  static const Color greyColor3 = Color(0xff2B2B2B);
  static const Color greyColor4 = Color(0xff3C3C3C);
  static const Color greyColor5 = Color(0xff535353);
  static const Color greyColor6 = Color(0xff7D7D7D);
  static const Color greyColor7 = Color(0xffA3A3A3);
  static const Color star = Color(0xffFADF52);

  static const grayLinearGradiant = LinearGradient(
      colors: [lightGrey, greyColor7],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static const blueLinearGradiant = LinearGradient(
      colors: [primaryColor, lightBlue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static const Color startLinearTextColor = Color(0xff2364C6);
  static const Color endLinearTextColor = Color(0xffACBFDA);
  static const textGradient = LinearGradient(
      colors: [AppColors.startLinearTextColor, AppColors.endLinearTextColor],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const buttonGradient = LinearGradient(
      colors: [AppColors.primaryColor, lightBlue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
