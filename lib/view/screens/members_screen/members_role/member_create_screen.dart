import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'customer_create_screen.dart';

class MemberCreateScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return showModalBottomSheet(
      backgroundColor: isDarkMode
          ? AppColors.contentColorLightTheme
          : AppColors.contentColorDarkTheme,
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.createUserAcc,
              style: txtTheme.titleLarge,
            ),
            Text(
              Constants.selection,
              style: txtTheme.titleMedium,
            ),
            const SizedBox(
              height: Constants.defaultPadding,
            ),
            CustomCreateForm(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(RouteName.User_Form);
              },
              title: Constants.userAcc,
              btnIcon: Icons.person,
            ),
            const SizedBox(
              height: Constants.defaultSize,
            ),
            CustomCreateForm(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(RouteName.Customer_Form);
              },
              title: Constants.customerAcc,
              btnIcon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
