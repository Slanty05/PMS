// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'animation_design_controller.dart';
import 'animation_design_model.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    Key? key,
    required this.durationInMS,
    required this.child,
    this.animate,
  }) : super(key: key);

  final Controller = Get.put(AnimationDesignController());
  final int durationInMS;
  final AnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        bottom: Controller.animate.value
            ? animate!.topAfter
            : animate!.bottomBefore,
        top: Controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        left:
            Controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        right: Controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        duration: Duration(milliseconds: durationInMS),
        child: AnimatedOpacity(
          opacity: Controller.animate.value ? 1 : 0,
          duration: Duration(milliseconds: durationInMS),
          child: child,
        ),
      ),
    );
  }
}
