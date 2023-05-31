// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/components/appbar_widget.dart';
import 'package:pms/res/components/searchBox.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';
import 'members_role/member_create_screen.dart';
import 'members_role/member_list_tile.dart';

class Members_Screen extends StatefulWidget {
  const Members_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Members_Screen> createState() => _Members_ScreenState();
}

class _Members_ScreenState extends State<Members_Screen> {
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
        appBar: const AppBar_Widget(
          title: Constants.members,
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: const EdgeInsets.all(Constants.defaultSize),
              child: Column(
                children: [
                  const SearchBox(),
                  const SizedBox(
                    height: Constants.defaultSize,
                  ),
                  Expanded(
                      child: Member_ListTile(
                    txtTheme: txtTheme,
                  )),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            MemberCreateScreen.buildShowModalBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
