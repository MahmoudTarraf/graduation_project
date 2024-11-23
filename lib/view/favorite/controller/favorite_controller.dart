import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/data/model/meals_model.dart';
import 'package:graduation_project/data/model/restaurant_model.dart';

class FavoriteController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final List<MealsModel> mealsList = meals;
  final List<RestaurantModel> restaurantsList = restaurants;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
