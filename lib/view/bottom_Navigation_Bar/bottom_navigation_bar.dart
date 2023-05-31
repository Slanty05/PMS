// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/view/screens/forms/forms.dart';
import 'package:pms/view/screens/home_screen/home_screen.dart';
import 'package:pms/view/screens/members_screen/members_screen.dart';
import 'package:pms/view/screens/notification_screen/notification_screen.dart';
import 'package:pms/view/screens/profile_screen/profile_screen.dart';
import 'package:pms/view_model_controller/controller/bottom_navigation_bar/bottom_navbar_controller.dart';

class NavBar_Screen extends StatefulWidget {
  const NavBar_Screen({Key? key}) : super(key: key);

  @override
  State<NavBar_Screen> createState() => _NavBar_ScreenState();
}

class _NavBar_ScreenState extends State<NavBar_Screen> {
  final controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return GetBuilder<NavbarController>(
      builder: (context) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              Home_Screen(),
              Members_Screen(),
              Forms_Screen(),
              Notification_Screen(),
              Profile_Screen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: isDarkMode
                  ? AppColors.contentColorLightTheme
                  : AppColors.whiteColor,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              items: [
                _bottombaritem(Icons.home, "Home"),
                _bottombaritem(Icons.group, "Members"),
                _bottombaritem(Icons.add_circle, "Forms"),
                _bottombaritem(Icons.notifications, "Notification"),
                _bottombaritem(Icons.person, "Profile"),
              ]),
        );
      },
    );
  }
}

_bottombaritem(
  IconData icon,
  String label,
) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
