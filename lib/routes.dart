import 'package:get/get.dart';
import 'package:graduation_project/view/authentication/login/screen/login.dart';
import 'package:graduation_project/view/authentication/onboarding/screen/on_boarding.dart';
import 'core/constant/app_routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoutes.onboarding,
    page: () => const OnboardingScreen(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => const LoginScreen(),
  ),
];
