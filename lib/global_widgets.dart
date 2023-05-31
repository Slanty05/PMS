import 'dart:async';
import 'package:pms/enums/snackbar_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

Widget circularProgress({Color color = AppColors.primaryColor}) {
  return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color));
}

void showSnackbar(SnackbarMessage messageType, String msg,
    {Color textolor = Colors.white}) {
  Get.snackbar(
    messageType == SnackbarMessage.error
        ? 'Error'
        : messageType == SnackbarMessage.success
            ? 'Success'
            : 'Missing',
    msg,
    backgroundColor: messageType == SnackbarMessage.error
        ? AppColors.errorColor
        : messageType == SnackbarMessage.success
            ? AppColors.primaryColor
            : AppColors.warninngColor,
    colorText: textolor,
  );
}

void fieldFocusChange(
    BuildContext context, FocusNode current, FocusNode nextFocus) {
  current.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

void scrollToBottom(ScrollController scrollController) {
  Timer(const Duration(milliseconds: 300), () {
    if (scrollController.hasClients) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    }
  });
}

void showImageOptionBox({
  required BuildContext context,
  required VoidCallback cameraPressed,
  required VoidCallback galleryPressed,
}) {
  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: const Center(
          child: Text(Constants.choose_Image),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: cameraPressed,
              leading: const CircleAvatar(
                maxRadius: 40,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              title: const Text(Constants.camera),
            ),
            const Divider(),
            ListTile(
              onTap: galleryPressed,
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
              ),
              title: const Text(Constants.gallery),
            ),
          ],
        ),
      );
    },
  );
}
