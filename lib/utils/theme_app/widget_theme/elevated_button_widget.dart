// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class Elevated_Button_Theme {
  Elevated_Button_Theme();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.contentColorDarkTheme,
        backgroundColor: AppColors.contentColorLightTheme,
        side: const BorderSide(color: AppColors.contentColorLightTheme),
        padding:
            const EdgeInsets.symmetric(vertical: Constants.defaulthalfpad)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.contentColorLightTheme,
        backgroundColor: AppColors.contentColorDarkTheme,
        side: const BorderSide(color: AppColors.contentColorDarkTheme),
        padding:
            const EdgeInsets.symmetric(vertical: Constants.defaulthalfpad)),
  );
}
