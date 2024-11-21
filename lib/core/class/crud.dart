import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:graduation_project/core/class/status_request.dart';
import 'package:http/http.dart' as http;

import '../constant/const_data.dart';
import 'helper_functions.dart';

String _bearerToken = 'Bearer ${ConstData.accessToken}';

Map<String, String> myHeaders = {
  'authorization': _bearerToken,
  'Accept': 'application/json'
};

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response =
            await http.post(Uri.parse(linkUrl), headers: myHeaders, body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print("==================== $responsebody");
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }

  Future<Either<StatusRequest, Map>> getData(String linkUrl) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response = await http.get(Uri.parse(linkUrl), headers: myHeaders);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print("==================== responsebody$responsebody");
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}
