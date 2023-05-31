import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pms/enums/snackbar_message.dart';
import 'package:pms/global_widgets.dart';
import 'package:pms/model/login_user_model/user_model.dart';
import 'package:pms/repository/login_repository/login_repository.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'package:pms/view_model_controller/controller/user_preference/user_preferences_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'user not found') {
        showSnackbar(SnackbarMessage.error, 'Login Error');
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);

        userPreference.saveUser(userModel).then((value) {
          // releasing resouces because we are not going to use this
          Get.delete<LoginViewModel>();
          Get.offAllNamed(RouteName.NavBar_Screen)!.then((value) {});
          showSnackbar(SnackbarMessage.success, 'Login successfully');
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      showSnackbar(SnackbarMessage.error, error.toString());
    });
  }
}
