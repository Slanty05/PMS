// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';

class Card_List_Tile extends StatelessWidget {
  const Card_List_Tile({
    Key? key,
    required this.text,
    this.onPress,
    this.img,
    this.icons,
    this.circleAvatar,
  }) : super(key: key);

  final String text;
  final IconData? icons;
  final AssetImage? img;
  final VoidCallback? onPress;
  final CircleAvatar? circleAvatar;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      color: isDarkMode
          ? AppColors.listTileColor
          : AppColors.contentColorDarkTheme,
      child: ListTile(
        leading: circleAvatar,
        title: Text(
          text,
          style: txtTheme.titleMedium,
        ),
        onTap: onPress,
        trailing: Icon(icons),
      ),
    );
  }
}
