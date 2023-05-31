import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/update_forms_screens/task/update_task.dart';

class UpdateTaskScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: isDarkMode
          ? AppColors.contentColorLightTheme
          : AppColors.contentColorDarkTheme,
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: const Update_Task_Form(),
      ),
    );
  }
}
