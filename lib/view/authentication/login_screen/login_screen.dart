// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/components/login_and_signup_footer_widget.dart';
import 'package:pms/res/components/login_and_signup_header_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'login_form_widget.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
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
                      subtitle: Constants.loginTitle1,
                    ),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
                    FormWidget(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
                    LoginFooterWidget(
                      title: Constants.endSignup,
                      buttonTitle: Constants.signup,
                      onPress: () {
                        Get.toNamed(RouteName.Home_Screen);
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
