// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:pms/view/authentication/welcome_screen/welcome_screen.dart';

class AnimationDesignController extends GetxController {
  static AnimationDesignController get find => Get.find();

  RxBool animate = false.obs;

  Future StartSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = true;
    Get.offAll(() => const Welcome_Screen());
  }

  Future StartAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}
