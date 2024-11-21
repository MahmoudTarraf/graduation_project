import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/app_routes.dart';
import '../core/sevices/sevices.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.home);
    }
    return null;
  }
}
