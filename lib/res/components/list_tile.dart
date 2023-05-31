// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class List_Tile extends StatelessWidget {
  const List_Tile({
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
    final txtTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: circleAvatar,
      title: Text(
        text,
        style: txtTheme.titleMedium,
      ),
      onTap: onPress,
      trailing: Icon(icons),
    );
  }
}
