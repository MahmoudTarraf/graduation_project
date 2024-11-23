import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/constant/app_colors.dart';
import 'package:graduation_project/core/constant/app_texts.dart';
import 'package:graduation_project/core/constant/styles.dart';
import 'package:graduation_project/view/favorite/controller/favorite_controller.dart';
import 'package:graduation_project/view/favorite/widgets/favorite_meals.dart';
import 'package:graduation_project/view/favorite/widgets/favorite_restaurants.dart';
import 'package:graduation_project/view/widget/appbar/custom_app_bar.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the controller instance
    final favoriteController = Get.put(FavoriteController());

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomAppBar(
          height: 150.h,
          title: AppTexts.favoriteScreenName,
          bottom: TabBar(
            labelStyle: Styles.style20.copyWith(fontWeight: FontWeight.w600),
            labelColor: AppColors.primaryColor,
            unselectedLabelColor: AppColors.greyColor7,
            controller: favoriteController.tabController,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 2.0,
              ),
              insets: EdgeInsets.symmetric(horizontal: 40.0),
            ),
            tabs: const [
              Tab(text: AppTexts.meals),
              Tab(text: AppTexts.restaurants),
            ],
          ),
        ),
        body: TabBarView(
          controller: favoriteController.tabController,
          children: const [
            FavoriteMeals(),
            FavoriteRestaurants(),
          ],
        ),
      ),
    );
  }
}
