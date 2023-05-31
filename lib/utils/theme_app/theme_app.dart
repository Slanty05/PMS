// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'widget_theme/elevated_button_widget.dart';
import 'widget_theme/outlined_button_widget.dart';
import 'widget_theme/text_field_theme.dart';
import 'widget_theme/text_theme.dart';

@immutable
abstract class AppTheme {
  static const AppBarTheme appBarTheme =
      AppBarTheme(centerTitle: true, elevation: 0);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: Text_Theme.lightTextTheme,
    outlinedButtonTheme: Outlined_Button_Theme.lightOutlinedButtonTheme,
    elevatedButtonTheme: Elevated_Button_Theme.lightElevatedButtonTheme,
    inputDecorationTheme: Text_Form_Field_Theme.lightInputDecorationTheme,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: AppColors.contentColorLightTheme)),
    iconTheme: const IconThemeData(color: AppColors.contentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: AppColors.errorColor,
    ),

    // Navbar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      selectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.32),
      selectedLabelStyle:
          TextStyle(color: AppColors.contentColorLightTheme.withOpacity(0.32)),
      selectedIconTheme:
          const IconThemeData(color: AppColors.contentColorLightTheme),
      showUnselectedLabels: false,
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    textTheme: Text_Theme.darkTextTheme,
    outlinedButtonTheme: Outlined_Button_Theme.darkOutlinedButtonTheme,
    elevatedButtonTheme: Elevated_Button_Theme.darkElevatedButtonTheme,
    inputDecorationTheme: Text_Form_Field_Theme.darkInputDecorationTheme,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.contentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: AppColors.contentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: AppColors.errorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.contentColorLightTheme,
      selectedItemColor: AppColors.contentColorDarkTheme.withOpacity(0.7),
      unselectedItemColor: AppColors.contentColorDarkTheme.withOpacity(0.32),
      selectedLabelStyle:
          TextStyle(color: AppColors.contentColorDarkTheme.withOpacity(0.32)),
      selectedIconTheme:
          const IconThemeData(color: AppColors.contentColorDarkTheme),
      showUnselectedLabels: false,
    ),
  );
}
