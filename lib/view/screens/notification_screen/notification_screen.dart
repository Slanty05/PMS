// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({Key? key}) : super(key: key);

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
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
    return Scaffold(
      appBar: const AppBar_Widget(
        title: Constants.notification,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Constants.defaultSize),
            child: FutureBuilder(
              future: networkApiResponse.GetApiResponse(
                  "https://jsonplaceholder.typicode.com/users"),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Failed to load data: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                return ListView.builder(
                  itemCount: snapshot.hasData ? snapshot.data.length : 0,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      color: isDarkMode
                          ? AppColors.listTileColor
                          : AppColors.contentColorDarkTheme,
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(Images.profile),
                        ),
                        title: Text(
                          snapshot.data[index]['name'],
                          style: txtTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          snapshot.data[index]['name'],
                          style: txtTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
