// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/field_forms/customer/customer_form.dart';

class Update_Customer_Form extends StatelessWidget {
  const Update_Customer_Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBar_Widget(
        title: Constants.updateForm,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Constants.defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    Constants.userform,
                    style: txtTheme.headlineMedium,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: Constants.defaultSize - 10,
                  ),
                  const Center(
                    child: CustomerForm(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        Constants.submit.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
