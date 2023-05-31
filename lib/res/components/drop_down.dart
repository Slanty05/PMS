// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CustomDropdown extends StatefulWidget {
  final String? Url;
  const CustomDropdown({Key? key, this.Url}) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  List<dynamic> dropdownValues = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
    selectedValue = dropdownValues.isNotEmpty ? dropdownValues[0]['id'].toString() : null;
  }

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(widget.Url!));
    if (response.statusCode == 200) {
      setState(() {
        dropdownValues = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        decoration: const InputDecoration(
            isDense: true, contentPadding: EdgeInsets.all(10)),
        hint: const Text("Select Category"),
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownValues.map<DropdownMenuItem<String>>((dynamic value) {
          return DropdownMenuItem<String>(
            value: value['id'].toString(),
            child: Text(value['name']),
          );
        }).toList(),
      ),
    );
  }
}

