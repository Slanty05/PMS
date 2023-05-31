// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:overlay_group_avatar/overlay_group_avatar.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class CustomModuleList extends StatelessWidget {
  String projName;
  CustomModuleList(
      {super.key,
      required this.mediaQuery,
      required this.isDarkMode,
      required this.txtTheme,
      required this.projName});

  final MediaQueryData mediaQuery;
  final bool isDarkMode;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.size.height * 0.35,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                projName,
                                style: txtTheme.titleLarge,
                              ),
                              Text(
                                "snapshot.data[index]['name']",
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
                              backgroundImage: const AssetImage(Images.profile),
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
    );
  }
}
