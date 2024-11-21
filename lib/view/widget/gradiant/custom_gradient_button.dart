import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final void Function()? onPressed;
  const CustomGradientButton(
      {super.key, required this.text, this.style, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: AppColors.buttonGradient,
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
