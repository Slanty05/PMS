import 'package:flutter/material.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget(
      {Key? key,
      required this.title,
      required this.buttonTitle,
      required this.onPress})
      : super(key: key);

  final String title, buttonTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: Constants.defaultSize,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(AppIcons.google),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text(Constants.logGoogle),
          ),
        ),
        const SizedBox(height: Constants.defaultSize - 20),
        TextButton(
          onPressed: onPress,
          child: Text.rich(
            TextSpan(
              text: title,
              style: Theme.of(context).textTheme.labelMedium,
              children: [
                TextSpan(
                    text: buttonTitle,
                    style: const TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
