// ignore_for_file: camel_case_types

import 'package:pms/enums/snackbar_message.dart';
import 'package:pms/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:pms/res/components/login_and_signup_header_widget.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class Forget_Password_Mail extends StatefulWidget {
  const Forget_Password_Mail({Key? key}) : super(key: key);

  @override
  State<Forget_Password_Mail> createState() => _Forget_Password_MailState();
}

class _Forget_Password_MailState extends State<Forget_Password_Mail> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Constants.defaultPadding),
              child: Column(
                children: [
                  const SizedBox(
                    height: Constants.defaultPadding * 4,
                  ),
                  const FormHeaderWidget(
                    image: Images.forgetPassword,
                    title: Constants.forgetPass,
                    subtitle: Constants.forgetEmailSubtitle,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    heightBetween: Constants.defaultPadding,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Constants.defaultPadding,
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        CustomTextField(
                          label: Constants.email,
                          keyboardType: TextInputType.emailAddress,
                          hintText: Constants.email,
                          icon: const Icon(Icons.email),
                          validator: (value) {
                            if (value!.isEmpty) {
                              showSnackbar(
                                  SnackbarMessage.missing, 'Enter Email');
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: Constants.defaultSize,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: RoundButton(
                            width: 200,
                            title: Constants.signup,
                            onPress: () {
                              if (formkey.currentState!.validate()) {}
                            },
                          ),
                        ),
                      ],
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
