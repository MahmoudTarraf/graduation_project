import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/widget/gradiant/custom_gradient_text.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? backIcon;
  final String? title;
  final TextStyle? titleStyle;
  final String? iconPath;
  final double? svgHeight;
  final double? svgWidth;
  final double height;

  const CustomAppBar({
    Key? key,
    this.backIcon,
    this.title,
    this.titleStyle,
    this.iconPath,
    this.svgHeight,
    this.svgWidth,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Container(
        color: AppColors.backgroundColor,
      ),
      title: Row(
        children: [
          // Back Icon
          GestureDetector(
            onTap: () => Get.back(),
            child: backIcon ??
                const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
          ),
          SizedBox(width: 10.w),

          // Title
          if (title != null)
            Expanded(
              child: CustomGradientText(
                text: title!,
                style: titleStyle ??
                    Styles.styleBold20.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),

          // SVG Icon
          if (iconPath != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                iconPath!,
                height: svgHeight ?? 24,
                width: svgWidth ?? 24,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
