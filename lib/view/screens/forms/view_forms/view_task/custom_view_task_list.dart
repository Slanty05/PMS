// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/colors_url/app_colors_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class TaskViewList extends StatelessWidget {
  TaskViewList({
    super.key,
    required this.txtTheme,
  });

  NetworkApiResponse networkApiResponse = NetworkApiResponse();
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return FutureBuilder(
      future: networkApiResponse.GetApiResponse(
          "https://jsonplaceholder.typicode.com/users"),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Failed to load data: ${snapshot.error}'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.hasData ? snapshot.data.length : 0,
          itemBuilder: (context, index) => Wrap(
            children: [
              Card(
                elevation: 1,
                color: isDarkMode
                    ? AppColors.contentColorLightTheme
                    : AppColors.contentColorDarkTheme,
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Images.profile),
                    foregroundImage:
                        NetworkImage("https://example.com/avatar.jpg"),
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
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
