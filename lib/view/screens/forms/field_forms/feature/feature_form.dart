import 'package:flutter/material.dart';
import 'package:pms/res/components/drop_down.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class FeatureForm extends StatelessWidget {
  const FeatureForm({
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
            label: Constants.title,
          ),
          const SizedBox(
            height: Constants.defaultSize - 10,
          ),
          TextFormField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 10,
            decoration: const InputDecoration(
              labelText: Constants.description,
            ),
          ),
          const SizedBox(
            height: Constants.defaultSize,
          ),
          TextFormField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 10,
            decoration: const InputDecoration(
              labelText: Constants.featuredoc,
            ),
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
          Text(
            Constants.module,
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
