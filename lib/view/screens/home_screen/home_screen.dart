// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/searchBox.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'widget/home_appbar.dart';
import 'widget/home_top_feature.dart';
import 'widget/home_top_module.dart';
import 'widget/home_top_task.dart';
import 'widget/home_bug_report.dart';
import 'widget/home_header.dart';
import 'widget/home_top_project.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  NetworkApiResponse networkApiResponse = NetworkApiResponse();

  List items = [];

  Future<void> _refresh() async {
    // Call all the REST APIs that you want to refresh
    final items = await networkApiResponse.GetApiResponse(
        "https://jsonplaceholder.typicode.com/users");

    // Update the UI
    setState(() {
      this.items = [
        items,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const HomeAppBar(),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Constants.defaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
//  Heading
                    HomeHeader(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
//  Search Box
                    const SearchBox(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
//  Top Projects
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.homeTopProject,
                          style: txtTheme.titleLarge,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Get.toNamed(RouteName.Read_Project);
                            },
                            child: const Text(Constants.viewAll))
                      ],
                    ),
                    HomeTopProject(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),

//  Top Module
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.homeTopModule,
                          style: txtTheme.titleLarge,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Get.toNamed(RouteName.Read_Module);
                            },
                            child: const Text(Constants.viewAll))
                      ],
                    ),
                    HomeTopModule(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),

//  Top Feature
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.homeTopFeature,
                          style: txtTheme.titleLarge,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Get.toNamed(RouteName.Read_Feature);
                            },
                            child: const Text(Constants.viewAll))
                      ],
                    ),
                    HomeTopFeature(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),
//  Top Task
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.homeTopTask,
                          style: txtTheme.titleLarge,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Get.toNamed(RouteName.Read_Task);
                            },
                            child: const Text(Constants.viewAll))
                      ],
                    ),
                    HomeTopTask(),
                    const SizedBox(
                      height: Constants.defaultSize,
                    ),

// Button For Bug Report
                    const Home_Bug_Report()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
