import 'package:flutter/material.dart';
import 'package:pms/res/components/drop_down.dart';
import 'package:pms/res/components/text_form_field.dart';

import '../../../../../res/constant_url/app_constants_url.dart';

class UserForm extends StatelessWidget {
  const UserForm({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomTextField(
            label: Constants.userimage,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          const CustomTextField(
            label: Constants.username,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          const CustomTextField(
            label: Constants.email,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          const CustomTextField(
            label: Constants.phone,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          const CustomTextField(
            label: Constants.password,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          Text(
            Constants.shift,
            style: txtTheme.titleLarge,
          ),
          const CustomDropdown(),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          Text(
            Constants.cost,
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