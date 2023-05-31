import 'package:flutter/material.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class CustomerForm extends StatelessWidget {
  const CustomerForm({
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
            label: Constants.customerlogo,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customername,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customerpname,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customeremail,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customerphone,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customerwp,
          ),
          SizedBox(
            height: Constants.defaultSize - 10,
          ),
          CustomTextField(
            label: Constants.customerurl,
          ),
          SizedBox(
            height: Constants.defaultSize,
          ),
        ],
      ),
    );
  }
}
