import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/enums/snackbar_message.dart';
import 'package:pms/global_widgets.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/components/text_form_field.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view_model_controller/controller/signup_controller/signup_view_model.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final signupVM = Get.put(SignupViewModel());

  final _formkey = GlobalKey<FormState>();

  bool pwdVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: Constants.username,
            keyboardType: TextInputType.text,
            hintText: Constants.username,
            icon: const Icon(Icons.person),
            controller: signupVM.usernameController.value,
            focusNode: signupVM.usernameFocusNode.value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                showSnackbar(
                    SnackbarMessage.missing, "Please enter your UserName");
                return 'Please enter your Email';
              } else if (value.length < 3) {
                showSnackbar(SnackbarMessage.missing,
                    "UserName must be at least 3 characters");
                return 'UserName must be at least 3 characters';
              }
              return null;
            },
          ),
          const SizedBox(
            height: Constants.defaulthalfsize,
          ),
          CustomTextField(
            label: Constants.email,
            keyboardType: TextInputType.emailAddress,
            hintText: Constants.email,
            icon: const Icon(Icons.email),
            controller: signupVM.emailController.value,
            focusNode: signupVM.emailFocusNode.value,
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
            controller: signupVM.passwordController.value,
            focusNode: signupVM.passwordFocusNode.value,
            // obscureText: true,
            // suffix: InkWell(
            //   onTap: () => setState(
            //     () => pwdVisibility = !pwdVisibility,
            //   ),
            //   child: Icon(
            //     pwdVisibility
            //         ? Icons.visibility_outlined
            //         : Icons.visibility_off_outlined,
            //     size: 18,
            //   ),
            // ),
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
            height: Constants.defaultPadding + 5,
          ),
          SizedBox(
            width: double.infinity,
            child: Obx(
              () => RoundButton(
                width: 200,
                title: Constants.signup,
                loading: signupVM.loading.value,
                onPress: () {
                  if (_formkey.currentState!.validate()) {
                    signupVM.SignUpApi();
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
