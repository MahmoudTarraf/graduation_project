import 'package:flutter/material.dart';
import 'package:graduation_project/core/constant/app_colors.dart';

class CustomGradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const CustomGradientText({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return AppColors.textGradient
            .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: Text(
        text,
        style: style ?? const TextStyle(color: AppColors.whiteColor),
      ),
    );
  }
}
