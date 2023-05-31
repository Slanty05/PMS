import 'package:flutter/material.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class RoleForm extends StatelessWidget {
  const RoleForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CustomTextField(
            label: Constants.roletitle,
          ),
          SizedBox(
            height: Constants.defaultSize,
          ),
          CustomTextField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 10,
            label: Constants.roledes,
          ),
        ],
      ),
    );
  }
}
