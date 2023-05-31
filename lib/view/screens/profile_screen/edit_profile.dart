// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/global_widgets.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'package:pms/res/images_url/app_images_url.dart';
import 'package:pms/res/routes_url/app_routes_name.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBar_Widget(
        title: Constants.editProfile,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: SizedBox(
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
                              child: IconButton(
                                onPressed: () {
                                  showImageOptionBox(
                                      context: context,
                                      cameraPressed: () {},
                                      galleryPressed: () {});
                                },
                                icon: const Icon(
                                  LineAwesomeIcons.camera,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Constants.defaultSize,
                      ),
                      const Divider(),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: Constants.email,
                                hintText: Constants.email,
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                            const SizedBox(
                              height: Constants.defaultSize,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: Constants.password,
                                hintText: Constants.password,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.remove_red_eye_sharp),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: Constants.defaultSize - 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () =>
                                    Get.offNamed(RouteName.Profile_Screen),
                                child: Text(
                                  Constants.next.toUpperCase(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
