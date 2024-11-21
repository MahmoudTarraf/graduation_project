import 'package:get/get.dart';
import 'package:graduation_project/core/class/helper_functions.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  bool isValidPhoneNumber = false;

  checkNumberValidate(String value) {
    if (value.length == 10 && value.startsWith('0')) {
      if (HelperFunctions.validInput(value, 'phone')) {
        isValidPhoneNumber = true;
        update();
      }
    } else {
      isValidPhoneNumber = false;
      update();
    }
  }

  goToVerificationCode() {
    if (isValidPhoneNumber) {
      // Get.toNamed(AppRoutes.verificationCode);
    }
    return;
  }
}
