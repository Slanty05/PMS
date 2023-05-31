import 'package:flutter/material.dart';
import 'package:pms/res/components/drop_down.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class UATForm extends StatelessWidget {
  const UATForm({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            Constants.uatstatus,
            style: txtTheme.titleLarge,
          ),
          const CustomDropdown(),
          const SizedBox(
            height: Constants.defaultPadding,
          ),
          Text(
            Constants.uat,
            style: txtTheme.titleLarge,
          ),
          const CustomDropdown(),
          const SizedBox(
            height: Constants.defaultSize,
          ),
        ],
      ),
    );
  }
}
