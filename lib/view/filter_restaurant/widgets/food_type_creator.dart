import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_colors.dart';
import 'package:graduation_project/core/constant/styles.dart';
import 'package:graduation_project/view/filter_restaurant/controller/filter_retaurant_controller.dart';

class FoodTypeCreator extends StatelessWidget {
  const FoodTypeCreator({
    super.key,
    required this.foodList,
    required this.foodName,
    required this.category,
  });
  final String foodName;
  final List<String> foodList;
  final String category;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterRestaurantController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodName,
                style: Styles.styleBold16,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  final thisItem = foodList[index];
                  final isSelected =
                      controller.selectedItems[category] == thisItem;

                  return GestureDetector(
                    onTap: () {
                      controller.selectItem(category, thisItem);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.lightBlue
                              : AppColors.greyColor7,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          thisItem,
                          style: Styles.style14.copyWith(
                            color: isSelected
                                ? AppColors.lightBlue
                                : AppColors.greyColor7,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
