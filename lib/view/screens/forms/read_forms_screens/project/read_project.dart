// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/create_forms_screens/project/project_widget.dart';
import 'customreadproject.dart';

class Read_Project extends StatefulWidget {
  const Read_Project({Key? key}) : super(key: key);

  @override
  State<Read_Project> createState() => _Read_ProjectState();
}

class _Read_ProjectState extends State<Read_Project> {
  NetworkApiResponse networkApiResponse = NetworkApiResponse();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBar_Widget(
        title: Constants.project,
      ),
      body: SizedBox(
        height: mediaQuery.size.height * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(Constants.defaulthalfsize),
          child: ReadProjectList(
            networkApiResponse: networkApiResponse,
            mediaQuery: mediaQuery,
            isDarkMode: isDarkMode,
            txtTheme: txtTheme,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const Project_Form());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
