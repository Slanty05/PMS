// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'custom_view_project_list.dart';
import 'custome_view_project.dart';
import 'view_bottomsheet_project.dart';

class ViewProject extends StatefulWidget {
  String projName;
  ViewProject({Key? key, required this.projName}) : super(key: key);

  @override
  State<ViewProject> createState() => _ViewProjectState();
}

class _ViewProjectState extends State<ViewProject> {
  NetworkApiResponse networkApiResponse = NetworkApiResponse();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const AppBar_Widget(
          title: Constants.project,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(Constants.defaultSize),
            child: Column(
              children: [
                CustomProjectList(
                  mediaQuery: mediaQuery,
                  isDarkMode: isDarkMode,
                  txtTheme: txtTheme,
                  projName: widget.projName,
                ),
                const SizedBox(
                  height: Constants.defaultSize,
                ),
                Expanded(
                  child: ProjectViewList(
                    txtTheme: txtTheme,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            UpdateProjectScreen.buildShowModalBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
