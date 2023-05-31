// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';

class DropDown_Theme {
  DropDown_Theme();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.black,
    prefixIconColor: AppColors.secondaryColor,
    floatingLabelStyle: const TextStyle(color: AppColors.secondaryColor),
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.secondaryColor)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.black,
    prefixIconColor: AppColors.primaryColor,
    floatingLabelStyle: const TextStyle(color: AppColors.primaryColor),
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.primaryColor)),
  );
}
