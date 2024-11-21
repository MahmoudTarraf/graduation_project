import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/authentication/onboarding/controller/onboarding_controller.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_image_asset.dart';
import '../../../../core/constant/app_sizes.dart';
import '../../../../core/constant/app_texts.dart';
import '../../../../core/constant/styles.dart';
import '../../../widget/gradiant/custom_gradient_button.dart';
// import '../../../widget/app_bar/custom_gradient_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: (AppSizes.xl * 2).h,
        ),
        SizedBox(
          width: 108.w,
          height: 95.h,
          child: Center(
            child: Text(
              AppTexts.forYourHome,
              style: Styles.style45.copyWith(color: AppColors.whiteColor),
            ),
          ),
        ),
        SizedBox(
          height: AppSizes.sm.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 383.h,
          child: Image.asset(AppImageAsset.logo),
        ),
        const SizedBox(
          height: AppSizes.defaultSpace,
        ),
        SizedBox(
          width: 219.w,
          height: 53.w,
          child: Text(
            AppTexts.enjoyYourMeal,
            style: Styles.style25,
          ),
        ),
        SizedBox(
          width: 219.w,
          height: 34.h,
          child: Text(
            AppTexts.excellentDeliveryService,
            style: Styles.style16,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 56.h,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
            child: CustomGradientButton(
              text: AppTexts.next,
              onPressed: () {
                controller.goToLoginPage();
              },
              style: Styles.style18,
            )),
      ],
    ));
  }
}
