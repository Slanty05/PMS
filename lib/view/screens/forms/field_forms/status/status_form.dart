import 'package:flutter/material.dart';
import 'package:pms/res/components/drop_down.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class StatusForm extends StatelessWidget {
  const StatusForm({
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
          Text(
            Constants.status,
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
