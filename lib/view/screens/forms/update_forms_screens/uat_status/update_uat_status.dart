// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/field_forms/uat_status/uat_status_form.dart';

class Update_UAT_Status_Form extends StatefulWidget {
  const Update_UAT_Status_Form({Key? key}) : super(key: key);

  @override
  State<Update_UAT_Status_Form> createState() => _Update_UAT_Status_FormState();
}

class _Update_UAT_Status_FormState extends State<Update_UAT_Status_Form> {
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
                children: [
                  Text(
                    Constants.uatstatusform,
                    style: txtTheme.headlineMedium,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: Constants.defaultSize,
                  ),
                  Center(
                    child: UATStatusForm(txtTheme: txtTheme),
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
