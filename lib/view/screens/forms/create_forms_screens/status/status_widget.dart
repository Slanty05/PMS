// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/field_forms/status/status_form.dart';

class Status_Form extends StatelessWidget {
  const Status_Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBar_Widget(
        title: Constants.forms,
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
                    Constants.statusform,
                    style: txtTheme.headlineMedium,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: Constants.defaultSize,
                  ),
                  Center(
                    child: StatusForm(txtTheme: txtTheme),
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
