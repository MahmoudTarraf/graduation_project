import 'package:get/get.dart';

class FilterRestaurantController extends GetxController {
  // This controller containes dump data
  // This dump data needs to be replaced from API
  List<String> matchingRestaurants = [];
  List<String> breakFastList = [
    'بيض',
    'حمص',
    'فطائر',
    'فول',
  ];
  List<String> lunchList = [
    'بيتزا',
    'فروج',
    'لحم',
    'هامبرغر',
    'مقبلات',
    'بطاطا',
    'مندي',
    'كريسبي',
  ];
  List<String> dessertsList = [
    'كيك',
    'كاتو',
    'بقلاوة',
    'بان كيك',
    'براونيز',
    'كنافة',
    'بوظة',
  ];
  final tempRestaurantsList = [
    'مطعم تشيلو',
  ];
  getSuggestions(String hint) {
    matchingRestaurants = tempRestaurantsList.where((restaurant) {
      return restaurant.contains(hint);
    }).toList();
    update();
  }

  // Map to track selected items for each category
  Map<String, String> selectedItems = {
    'breakfast': '',
    'lunch': '',
    'desserts': '',
  };

  void selectItem(String category, String item) {
    selectedItems[category] = item;
    update(); // Notify the UI to rebuild
  }

  searchRestaurant() {
    if (selectedItems['breakfast'] == '' ||
        selectedItems['lunch'] == '' ||
        selectedItems['desserts'] == '') {
      return;
    }
  }
  // clearSuggestions() {
  //   matchingRestaurants.clear();
  //   update(); // Notify the UI to rebuild
  // }
}
