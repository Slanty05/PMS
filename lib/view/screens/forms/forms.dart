// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/components/cards_list_tile.dart';
import 'package:pms/res/components/searchBox.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';

class Forms_Screen extends StatefulWidget {
  const Forms_Screen({Key? key}) : super(key: key);

  @override
  State<Forms_Screen> createState() => _Forms_ScreenState();
}

class _Forms_ScreenState extends State<Forms_Screen> {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: const AppBar_Widget(
          title: Constants.forms,
          icon: LineAwesomeIcons.facebook_messenger,
        ),
        body: Padding(
          padding: const EdgeInsets.all(Constants.defaultSize),
          child: Column(
            children: [
              const Divider(),
              const SearchBox(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: Constants.defaultPadding,
                      ),
                      Card_List_Tile(
                        text: Constants.assigmentform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Assigment_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.assigmentstatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Assigment_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.bugreportform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Bug_Report_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.bugreportstatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Bug_Report_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.customerform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Customer_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.featureform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Feature_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.featurestatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Feature_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.moduleform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Module_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.modulestatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Module_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.projectform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Project_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.projectstatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Project_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.roleform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Role_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.statusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.taskform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Task_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.taskstatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.Task_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.uatform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.UAT_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.uatstatusform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.UAT_Status_Form);
                        },
                      ),
                      const Divider(),
                      Card_List_Tile(
                        text: Constants.userform,
                        icons: Icons.arrow_right,
                        onPress: () {
                          Get.toNamed(RouteName.User_Form);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
