import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String)? validator;
  final int? maxLength;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: Styles.style12
            .copyWith(color: AppColors.lightGrey), // Customize hint style
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.greyColor7, width: 2.0), // Default border color
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 2.0), // Focused border color
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.greyColor7,
              width: 2.0), // Border style for default state
        ),
      ),
    );
  }
}
