// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/components/login_and_signup_footer_widget.dart';
import 'package:pms/res/components/login_and_signup_header_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'signup_form_widget.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Constants.defaultPadding),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const FormHeaderWidget(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      image: Images.login,
                      title: Constants.formTitle,
                      subtitle: Constants.signupTitle1,
                    ),
                    const SizedBox(
                      height: Constants.defaultPadding,
                    ),
                    FormWidget(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
                    LoginFooterWidget(
                      title: Constants.endSignup,
                      buttonTitle: Constants.login,
                      onPress: () {
                        Get.toNamed(RouteName.Login_Screen);
                      },
                    ),
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
