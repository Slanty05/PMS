// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:overlay_group_avatar/overlay_group_avatar.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/view/screens/forms/view_forms/view_project/project_view.dart';

class HomeTopProject extends StatelessWidget {
  HomeTopProject({
    super.key,
  });

  NetworkApiResponse networkApiResponse = NetworkApiResponse();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: mediaQuery.size.height * 0.35,
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
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: snapshot.hasData ? snapshot.data.length : 0,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Get.to(() => ViewProject(
                      projName: snapshot.data[index]['name'],
                    ));
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
