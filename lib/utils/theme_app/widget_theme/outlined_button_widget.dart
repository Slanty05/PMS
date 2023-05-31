// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class Outlined_Button_Theme {
  Outlined_Button_Theme();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.contentColorLightTheme,
        side: const BorderSide(color: AppColors.contentColorLightTheme),
        padding:
            const EdgeInsets.symmetric(vertical: Constants.defaulthalfpad)),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.contentColorDarkTheme,
        side: const BorderSide(color: AppColors.contentColorDarkTheme),
        padding:
            const EdgeInsets.symmetric(vertical: Constants.defaulthalfpad)),
  );
}
