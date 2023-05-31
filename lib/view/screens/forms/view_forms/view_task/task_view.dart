// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'custom_view_task.dart';
import 'custom_view_task_list.dart';
import 'view_bottomsheet_task.dart';

class ViewTask extends StatefulWidget {
  String projName;
  ViewTask({Key? key, required this.projName}) : super(key: key);

  @override
  State<ViewTask> createState() => _ViewTaskState();
}

class _ViewTaskState extends State<ViewTask> {
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
          title: Constants.task,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(Constants.defaultSize),
            child: Column(
              children: [
                CustomTaskList(
                  mediaQuery: mediaQuery,
                  isDarkMode: isDarkMode,
                  txtTheme: txtTheme,
                  projName: widget.projName,
                ),
                const SizedBox(
                  height: Constants.defaultSize,
                ),
                Expanded(
                  child: TaskViewList(
                    txtTheme: txtTheme,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            UpdateTaskScreen.buildShowModalBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
