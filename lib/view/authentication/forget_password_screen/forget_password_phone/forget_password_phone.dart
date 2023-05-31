// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/res/components/login_and_signup_header_widget.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class Forget_Password_Phone extends StatefulWidget {
  const Forget_Password_Phone({Key? key}) : super(key: key);

  @override
  State<Forget_Password_Phone> createState() => _Forget_Password_PhoneState();
}

class _Forget_Password_PhoneState extends State<Forget_Password_Phone> {
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
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: Constants.defaultPadding * 4,
                    ),
                    const FormHeaderWidget(
                      image: Images.forgetPassword,
                      title: Constants.forgetPass,
                      subtitle: Constants.forgetPhoneSubtitle,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      heightBetween: Constants.defaultPadding,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: Constants.defaultPadding,
                    ),
                    Form(
                        child: Column(
                      children: [
                        CustomTextField(
                          label: Constants.phone,
                          keyboardType: TextInputType.phone,
                          hintText: Constants.phone,
                          icon: const Icon(Icons.phone),
                          validator: (value) {
                            if (value!.isEmpty) {}
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
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
