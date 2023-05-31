import 'package:flutter/material.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class CustomCreateForm extends StatelessWidget {
  final IconData btnIcon;
  final VoidCallback onTap;
  final String title;

  const CustomCreateForm({
    required this.title,
    required this.btnIcon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Constants.defaultSize),
        decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 40.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: txtTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
