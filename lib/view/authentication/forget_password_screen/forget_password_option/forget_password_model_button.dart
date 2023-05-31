import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'forget_passward_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
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
              Constants.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              Constants.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: Constants.defaultPadding,
            ),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(RouteName.Forget_Password_Mail);
              },
              title: Constants.email,
              btnIcon: Icons.mail_outline_rounded,
              subTitle: Constants.resetViaEmail,
            ),
            const SizedBox(
              height: Constants.defaultSize,
            ),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(RouteName.Forget_Password_Phone);
              },
              title: Constants.phone,
              btnIcon: Icons.phone_android_outlined,
              subTitle: Constants.resetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
