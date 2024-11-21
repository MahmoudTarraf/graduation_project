import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graduation_project/routes.dart';
import 'package:graduation_project/theme/app_themes.dart';
import 'package:graduation_project/view/filter_restaurant/screen/filter_restaurant.dart';
import 'bindings/initial_bindings.dart';

import 'core/sevices/sevices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          locale: const Locale('ar'),
          initialBinding: InitialBindings(),
          debugShowCheckedModeBanner: false,
          home: const FilterRestaurant(),
          theme: appTheme,
          getPages: routes,
        );
      },
    );
  }
}
