// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';

class Text_Form_Field_Theme {
  Text_Form_Field_Theme();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    prefixIconColor: AppColors.contentColorLightTheme,
    suffixIconColor: AppColors.contentColorLightTheme,
    floatingLabelStyle:
        const TextStyle(color: AppColors.contentColorLightTheme),
    focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: AppColors.contentColorLightTheme)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    prefixIconColor: AppColors.contentColorDarkTheme,
    suffixIconColor: AppColors.contentColorDarkTheme,
    floatingLabelStyle: const TextStyle(color: AppColors.contentColorDarkTheme),
    focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: AppColors.contentColorDarkTheme)),
  );
}
