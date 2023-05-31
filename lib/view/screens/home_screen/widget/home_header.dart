// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';

class HomeHeader extends StatelessWidget {
  HomeHeader({
    super.key,
  });

  NetworkApiResponse networkApiResponse = NetworkApiResponse();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final txtTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: mediaQuery.size.height * 0.1,
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(Images.profile),
                foregroundImage: NetworkImage("https://example.com/avatar.jpg"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   snapshot.data[index]['name'],
                  //   style: txtTheme.titleSmall,
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  Text(Constants.appName, style: txtTheme.titleSmall),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
