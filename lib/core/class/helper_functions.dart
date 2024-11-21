import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/core/class/status_request.dart';

class HelperFunctions {
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }



  static validInput(String value,  String? type){

    if (type == "phone") {
      if (GetUtils.isPhoneNumber(value)) {
        return true;
      }
      return false;
    }

    if(value.isEmpty){
      return "this filed can't be empty";
    }
  }

  static checkInternet() async {
    try {
      var result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  static handlingData(response) {
    if (response is StatusRequest) {
      return response;
    } else {
      return StatusRequest.success;
    }
  }

}