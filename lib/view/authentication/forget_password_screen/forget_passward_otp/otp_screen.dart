// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class OTP_Screen extends StatelessWidget {
  OTP_Screen({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Constants.defaultPadding),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Text(
                            Constants.OTPTitle,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                            Constants.OTPSubTitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    Constants.OTPMessage,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Constants.defaultSize,
                  ),
                  OtpTextField(
                    numberOfFields: 6,
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
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
                        if (_formkey.currentState!.validate()) {}
                      },
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
