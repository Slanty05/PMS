// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/components/list_tile.dart';
import 'package:pms/res/components/round_button.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';
import 'package:pms/view_model_controller/controller/user_preference/user_preferences_view_model.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
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
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    UserPreference userPreference = UserPreference();

    return Scaffold(
      appBar: AppBar_Widget(
        title: Constants.profile,
        icon: Icons.logout_outlined,
        onPress: () {
          userPreference.removeUser().then((value) {
            Get.offAllNamed(RouteName.Welcome_Screen);
          });
        },
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Constants.defaultPadding),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(Images.profile),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade200,
                          ),
                          child: const Icon(LineAwesomeIcons.alternate_pencil,
                              size: 20.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: Constants.defaulthalfsize,
                  ),
                  Text(
                    Constants.username,
                    style: txtTheme.headlineSmall,
                  ),
                  Text(
                    Constants.profileSubheading,
                    style: txtTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: Constants.defaultSize,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RoundButton(
                      width: 200,
                      title: Constants.editProfile,
                      onPress: () {
                        Get.toNamed(RouteName.Edit_Profile);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: Constants.defaultPadding,
                  ),

                  const SizedBox(
                    height: Constants.defaulthalfsize,
                  ),

                  // Menu List
                  const List_Tile(
                    icons: LineAwesomeIcons.cog,
                    text: Constants.menu1,
                  ),
                  Divider(
                    color: isDarkMode
                        ? AppColors.contentColorDarkTheme
                        : AppColors.listTileColor,
                  ),
                  List_Tile(
                    icons: LineAwesomeIcons.wallet,
                    text: Constants.menu3,
                    onPress: () {},
                  ),
                  Divider(
                    color: isDarkMode
                        ? AppColors.contentColorDarkTheme
                        : AppColors.listTileColor,
                  ),
                  List_Tile(
                    icons: LineAwesomeIcons.user_check,
                    text: Constants.menu4,
                    onPress: () {},
                  ),
                  Divider(
                    color: isDarkMode
                        ? AppColors.contentColorDarkTheme
                        : AppColors.listTileColor,
                  ),
                  List_Tile(
                    icons: LineAwesomeIcons.info,
                    text: Constants.menu2,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
