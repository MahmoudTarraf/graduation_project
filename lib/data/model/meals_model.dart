import 'package:graduation_project/core/constant/app_image_asset.dart';
import 'package:graduation_project/data/model/restaurant_model.dart';

class MealsModel {
  final String name;
  final String image;
  final String rating;
  final double price;
  final RestaurantModel restaurant;

  MealsModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.price,
      required this.restaurant});
}

List<MealsModel> meals = [
  MealsModel(
    name: 'دجاج مشوي',
    image: AppImageAsset.roastChicken,
    rating: '4.3',
    price: 1500,
    restaurant: restaurants[0],
  ),
  MealsModel(
    name: 'وجبة هامبرغر',
    image: AppImageAsset.hamburger,
    rating: '4.3',
    price: 1500,
    restaurant: restaurants[0],
  ),
];
