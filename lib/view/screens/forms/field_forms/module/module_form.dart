import 'package:flutter/material.dart';
import 'package:pms/res/components/drop_down.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class ModuleForm extends StatelessWidget {
  const ModuleForm({
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
          Text(
            Constants.project,
            style: txtTheme.titleLarge,
          ),
          const CustomDropdown(),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          const CustomTextField(
            label: Constants.title,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          const CustomTextField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 10,
            label: Constants.description,
          ),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          const CustomTextField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 10,
            label: Constants.moduledoc,
          ),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          Text(
            Constants.startingdate,
            style: txtTheme.titleLarge,
          ),
          const CustomDropdown(),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          Text(
            Constants.endingdate,
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
