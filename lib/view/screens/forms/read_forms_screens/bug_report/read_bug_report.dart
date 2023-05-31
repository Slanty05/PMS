// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_group_avatar/overlay_group_avatar.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/create_forms_screens/bug_report/bug_report_widget.dart';
import 'package:pms/view/screens/forms/update_forms_screens/bug_report/update_bug_report.dart';

class Read_Bug_Report extends StatefulWidget {
  const Read_Bug_Report({Key? key}) : super(key: key);

  @override
  State<Read_Bug_Report> createState() => _Read_Bug_ReportState();
}

class _Read_Bug_ReportState extends State<Read_Bug_Report> {
  NetworkApiResponse networkApiResponse = NetworkApiResponse();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBar_Widget(
        title: Constants.bugreport,
      ),
      body: SizedBox(
        height: mediaQuery.size.height * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(Constants.defaulthalfsize),
          child: FutureBuilder(
            future: networkApiResponse.GetApiResponse(
                "https://jsonplaceholder.typicode.com/users"),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                    child: Text('Failed to load data: ${snapshot.error}'));
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: snapshot.hasData ? snapshot.data.length : 0,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(() => const Update_Bug_Report_Form());
                  },
                  child: SizedBox(
                    width: 320,
                    height: mediaQuery.size.height * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        top: 5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isDarkMode
                              ? AppColors.listTileColor
                              : AppColors.contentColorDarkTheme,
                        ),
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            snapshot.data[index]['name'],
                                            style: txtTheme.titleLarge,
                                          ),
                                          Text(
                                            snapshot.data[index]['name'],
                                            style: txtTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: Constants.defaultSize,
                                  ),
                                  Row(
                                    children: [
//Simple use of OverlapAvatar
                                      OverlapAvatar(
                                          insideRadius: 18,

                                          ///Determines how much in radius [Default value: 20]
                                          outSideRadius: 20,

                                          ///[outsideRadius must be gretter then insideRadius]Determines how much in radius [Default value: 24]
                                          widthFactor: 0.5,

                                          ///  Determines how much in horizontal they should overlap.[Default value: 0.6]
                                          backgroundImage: NetworkImage(
                                              snapshot.data[index]["name"]),
                                          backgroundColor: Colors.white),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Project Status",
                                            style: txtTheme.titleLarge,
                                          ),
                                          const SizedBox(
                                            height: Constants.defaulthalfsize,
                                          ),
                                          Text(
                                            "Project Status",
                                            style: txtTheme.titleLarge,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: Constants.defaultSize,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const Bug_Report_Form());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
