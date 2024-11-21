import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_colors.dart';
import 'package:graduation_project/core/constant/app_image_asset.dart';
import 'package:graduation_project/core/constant/app_sizes.dart';
import 'package:graduation_project/core/constant/app_texts.dart';
import 'package:graduation_project/core/constant/styles.dart';
import 'package:graduation_project/view/filter_restaurant/controller/filter_retaurant_controller.dart';
import 'package:graduation_project/view/filter_restaurant/widgets/food_type_creator.dart';
import 'package:graduation_project/view/widget/appbar/custom_app_bar.dart';
import 'package:graduation_project/view/widget/gradiant/custom_gradient_button.dart';
import 'package:graduation_project/view/widget/text_field/custom_text_form_field.dart';

class FilterRestaurant extends StatelessWidget {
  const FilterRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: GetBuilder<FilterRestaurantController>(
              init: FilterRestaurantController(),
              builder: (controller) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(
                    title: AppTexts.filterRestaurantScreenName,
                    iconPath: AppImageAsset.notificationsIcon,
                  ),
                  SizedBox(height: 2.h),
                  CustomTextFormField(
                    hintText: AppTexts.lookForRestaurant,
                    keyboardType: TextInputType.text,
                    prefixIcon: Image.asset(
                      AppImageAsset.searchIcon,
                      fit: BoxFit.scaleDown,
                    ),
                    onChanged: (value) {
                      controller.getSuggestions(value);
                    },
                  ),
                  SizedBox(height: 20.h),
                  // Results Section
                  if (controller.matchingRestaurants.isNotEmpty)
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.matchingRestaurants.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                controller.matchingRestaurants[index],
                                style: Styles.styleLight18,
                              ),
                              const Row(
                                children: [
                                  Text('4.3'),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.star,
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '4 KM  ',
                                    textDirection: TextDirection.ltr,
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  FoodTypeCreator(
                    foodName: AppTexts.breakFast,
                    foodList: controller.breakFastList,
                    category: 'breakfast',
                  ),
                  FoodTypeCreator(
                    foodName: AppTexts.lunch,
                    foodList: controller.lunchList,
                    category: 'lunch',
                  ),
                  FoodTypeCreator(
                    foodName: AppTexts.desserts,
                    foodList: controller.dessertsList,
                    category: 'desserts',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomGradientButton(
                    onPressed: controller.searchRestaurant(),
                    text: AppTexts.search,
                    style: Styles.style18.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
