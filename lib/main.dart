import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'utils/theme_app/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: AppRouter.getAppPages(),
    );
  }
}
