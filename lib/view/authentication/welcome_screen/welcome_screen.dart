// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'package:pms/view/authentication/fade_in_animation/animation_design.dart';
import 'package:pms/view/authentication/fade_in_animation/animation_design_controller.dart';
import 'package:pms/view/authentication/fade_in_animation/animation_design_model.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({Key? key}) : super(key: key);
  static const name = '/WelcomeScreen';

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AnimationDesignController());
    controller.StartAnimation();
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
            durationInMS: 1500,
            animate: AnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Constants.defaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(Images.welcome),
                      height: size.height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(
                          Constants.welcomeTitle,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          Constants.welcomeSubTitle,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () =>
                                Get.toNamed(RouteName.Login_Screen),
                            child: Text(
                              Constants.login.toUpperCase(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () =>
                                Get.toNamed(RouteName.Signup_Screen),
                            child: Text(
                              Constants.signup.toUpperCase(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
