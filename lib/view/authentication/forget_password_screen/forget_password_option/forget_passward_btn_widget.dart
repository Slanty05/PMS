import 'package:flutter/material.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  final IconData btnIcon;
  final VoidCallback onTap;
  final String title, subTitle;

  const ForgetPasswordBtnWidget({
    required this.title,
    required this.btnIcon,
    required this.onTap,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
