// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/view/screens/forms/create_forms_screens/feature_status/features_status_widget.dart';
import 'package:pms/view/screens/forms/update_forms_screens/feature_status/update_features_status.dart';

class Read_Feature_Status extends StatefulWidget {
  const Read_Feature_Status({Key? key}) : super(key: key);

  @override
  State<Read_Feature_Status> createState() => _Read_Feature_StatusState();
}

class _Read_Feature_StatusState extends State<Read_Feature_Status> {
  NetworkApiResponse networkApiResponse = NetworkApiResponse();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: const AppBar_Widget(
        title: Constants.forms,
      ),
      body: FutureBuilder(
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
              return Padding(
                padding: const EdgeInsets.all(Constants.defaulthalfsize),
                child: Card(
                  elevation: 3,
                  color: isDarkMode
                      ? AppColors.listTileColor
                      : AppColors.contentColorDarkTheme,
                  child: ListTile(
                    onTap: () {
                      Get.to(() => const Update_Feature_Status_Form());
                    },
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(Images.profile),
                    ),
                    title: Text(snapshot.data[index]['name']),
                    subtitle: Text(snapshot.data[index]['username']),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const Feature_Status_Form());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
