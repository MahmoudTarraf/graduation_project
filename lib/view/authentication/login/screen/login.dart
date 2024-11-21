import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_image_asset.dart';
import 'package:graduation_project/view/authentication/login/controller/login_controller.dart';
import 'package:graduation_project/view/widget/gradiant/custom_gradient_text.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_sizes.dart';
import '../../../../core/constant/app_texts.dart';
import '../../../../core/constant/styles.dart';
import '../../../widget/gradiant/custom_gradient_button.dart';
// import '../../../widget/app_bar/custom_gradient_text.dart';
import '../../../widget/text_field/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 75.h,
              ),
              Center(
                child: SizedBox(
                  width: 108.w,
                  height: 95.h,
                  child: Center(
                    child: CustomGradientText(
                      text: AppTexts.forYourHome,
                      style: Styles.style45.copyWith(
                        color: AppColors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: (AppSizes.lg * 2).h,
              ),
              CustomTextFormField(
                hintText: AppTexts.enterYourPhoneNumber,
                maxLength: 10,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  controller.checkNumberValidate(value);
                },
              ),
              SizedBox(
                  width: 77.w,
                  height: 25.h,
                  child: GetBuilder<LoginController>(
                    builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            width: 18.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              gradient: controller.isValidPhoneNumber
                                  ? AppColors.blueLinearGradiant
                                  : AppColors.grayLinearGradiant,
                              borderRadius: BorderRadius.all(
                                Radius.circular(18.h),
                              ),
                            ),
                            child: SvgPicture.asset(AppImageAsset.checkIcon),
                          ),
                          Text(
                            AppTexts.tenNumber,
                            style: Styles.style12,
                          ),
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 282.h,
              ),
              SizedBox(
                width: 313.h,
                height: 60.h,
                child: RichText(
                  text: TextSpan(
                    text: AppTexts.loginSentence,
                    style: Styles.style14,
                    children: [
                      TextSpan(
                          text: AppTexts.termsAndConditions,
                          style: Styles.style14
                              .copyWith(decoration: TextDecoration.underline)),
                      const TextSpan(
                        text: AppTexts.and,
                      ),
                      TextSpan(
                          text: AppTexts.privacyPolicy,
                          style: Styles.style14
                              .copyWith(decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (AppSizes.lg * 2).h,
              ),
              CustomGradientButton(
                text: AppTexts.agree,
                onPressed: () {
                  controller.goToVerificationCode();
                },
                style: Styles.style18,
              ),
              SizedBox(
                height: AppSizes.md.h,
              ),
              Center(
                child: CustomGradientText(
                  text: AppTexts.continueAsGuest,
                  style: Styles.style25.copyWith(
                    color: AppColors.lightBlue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
