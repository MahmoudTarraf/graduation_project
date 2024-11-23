import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_colors.dart';
import 'package:graduation_project/core/constant/app_sizes.dart';
import 'package:graduation_project/core/constant/styles.dart';
import 'package:graduation_project/data/model/restaurant_model.dart';
import 'package:graduation_project/view/favorite/controller/favorite_controller.dart';

class FavoriteRestaurants extends StatelessWidget {
  const FavoriteRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: GetBuilder(
            init: FavoriteController(),
            builder: (controller) => Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final thisItem = controller.restaurantsList[index];
                      return Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: restaurantItem(thisItem),
                      );
                    },
                    itemCount: controller.restaurantsList.length),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget restaurantItem(RestaurantModel item) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            color: AppColors.whiteColor,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        tileColor: AppColors.whiteColor,
        leading: Image.asset(item.image),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: Styles.style14.copyWith(fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.favorite,
              color: AppColors.primaryColor,
              size: 30,
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    textDirection: TextDirection.ltr,
                    " ${item.distance} KM",
                    style: Styles.style12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor7),
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    size: 25,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    item.rating,
                    style: Styles.style12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor7),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
