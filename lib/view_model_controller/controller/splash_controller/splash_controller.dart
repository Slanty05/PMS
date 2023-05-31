// TODO Implement this library.

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'package:pms/view_model_controller/controller/user_preference/user_preferences_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (kDebugMode) {
        print(value.token);
      }
      if (kDebugMode) {
        print(value.isLogin);
      }

      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(const Duration(seconds: 3),
            () => Get.offAllNamed(RouteName.Welcome_Screen));
      } else {
        Timer(const Duration(seconds: 3),
            () => Get.offAllNamed(RouteName.Home_Screen));
      }
    });
  }
}
