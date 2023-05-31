import 'package:flutter/material.dart';
import 'package:pms/res/constant_url/app_constants_url.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 4),
          ),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaulthalfsize, vertical: 5),
        child: const TextField(
          decoration: InputDecoration(
            hintText: Constants.homeSearch,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
