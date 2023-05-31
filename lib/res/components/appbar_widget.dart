// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class AppBar_Widget extends StatelessWidget implements PreferredSizeWidget {
  const AppBar_Widget({
    super.key,
    required this.title,
    this.icon,
    this.backButton,
    this.onPress,
  });

  final String title;
  final IconData? icon;
  final BackButton? backButton;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: backButton,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: Constants.defaultSize, top: 7),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: AppColors.cardBgColor,
            // ),
            child: IconButton(
              onPressed: onPress,
              icon: Icon(icon),
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
