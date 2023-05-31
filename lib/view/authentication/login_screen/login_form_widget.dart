import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/enums/snackbar_message.dart';
import 'package:pms/global_widgets.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/authentication/forget_password_screen/forget_password_option/forget_password_model_button.dart';
import 'package:pms/view_model_controller/controller/login_controller/login_view_model.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final loginVM = Get.put(LoginViewModel());
  bool pwdVisibility = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: Constants.email,
            keyboardType: TextInputType.emailAddress,
            hintText: Constants.email,
            icon: const Icon(Icons.email),
            controller: loginVM.emailController.value,
            focusNode: loginVM.emailFocusNode.value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                showSnackbar(
                    SnackbarMessage.missing, "Please enter your Email");
                return 'Please enter your Email';
              } else if (!RegExp(r"""^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$""")
                  .hasMatch(value)) {
                showSnackbar(SnackbarMessage.missing,
                    "Please enter a valid email address");
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(
            height: Constants.defaulthalfsize,
          ),
          CustomTextField(
            label: Constants.password,
            keyboardType: TextInputType.emailAddress,
            hintText: Constants.password,
            icon: const Icon(Icons.lock),
            controller: loginVM.passwordController.value,
            focusNode: loginVM.passwordFocusNode.value,
            // obscureText: true,
            suffixIcon: InkWell(
              onTap: () => setState(
                () => pwdVisibility = !pwdVisibility,
              ),
              child: Icon(
                pwdVisibility
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 18,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                showSnackbar(
                    SnackbarMessage.missing, "Please enter your Password");
                return 'Please enter your Password';
              } else if (value.length < 6) {
                showSnackbar(SnackbarMessage.missing,
                    "Password must be at least 6 characters");
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
          const SizedBox(
            height: Constants.defaulthalfpad,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Text(
                Constants.forgetPass,
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Obx(
              () => RoundButton(
                width: 200,
                title: Constants.login,
                loading: loginVM.loading.value,
                onPress: () {
                  if (_formkey.currentState!.validate()) {
                    loginVM.loginApi();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
