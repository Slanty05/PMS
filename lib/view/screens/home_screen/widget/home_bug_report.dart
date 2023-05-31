// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';

class Home_Bug_Report extends StatelessWidget {
  const Home_Bug_Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          onPressed: () {
            Get.toNamed(RouteName.Read_Bug_Report);
          },
          child: const Text(Constants.bugreport + Constants.feedBack)),
    );
  }
}
