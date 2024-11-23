import 'package:graduation_project/core/constant/app_image_asset.dart';

class RestaurantModel {
  final String name;
  final String image;
  final String rating;
  final double distance;

  RestaurantModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.distance});
}

List<RestaurantModel> restaurants = [
  RestaurantModel(
    name: 'مطعم موف',
    image: AppImageAsset.movRestaurant,
    rating: '4.3',
    distance: 4.3,
  ),
  RestaurantModel(
    name: 'مطعم تشيلو',
    image: AppImageAsset.cheloRestaurant,
    rating: '4.3',
    distance: 4.3,
  ),
];
