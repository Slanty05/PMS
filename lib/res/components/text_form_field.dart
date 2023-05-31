// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Icon? icon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmitted;
  final String? hintText;
  final int? minLines, maxLines;
  // final bool obscureText;
  final FormFieldValidator? validator;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.label,
    this.icon,
    this.hintText,
    // this.obscureText = false,
    this.validator,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.onFieldSubmitted,
    this.minLines,
    this.maxLines,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        focusNode: focusNode,
        // obscureText: obscureText,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: hintText,
          prefixIcon: icon,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}

// final myDataModel = MyDataModel('https://my-api.com/data');
// final myDataController = MyDataController(myDataModel);
//
// // Use the view in your UI
// myDataController.view,
