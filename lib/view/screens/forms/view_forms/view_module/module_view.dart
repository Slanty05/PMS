// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'custom_view_module.dart';
import 'custom_view_module_list.dart';
import 'view_bottomsheet_module.dart';

class ViewModule extends StatefulWidget {
  String projName;
  ViewModule({Key? key, required this.projName}) : super(key: key);

  @override
  State<ViewModule> createState() => _ViewModuleState();
}

class _ViewModuleState extends State<ViewModule> {
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
          title: Constants.module,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(Constants.defaultSize),
            child: Column(
              children: [
                CustomModuleList(
                  mediaQuery: mediaQuery,
                  isDarkMode: isDarkMode,
                  txtTheme: txtTheme,
                  projName: widget.projName,
                ),
                const SizedBox(
                  height: Constants.defaultSize,
                ),
                Expanded(
                  child: ModuleViewList(
                    txtTheme: txtTheme,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            UpdateModuleScreen.buildShowModalBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
