// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:pms/data/app_exceptions.dart';
import 'package:pms/data/network/base_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkApiResponse extends Base_Api_Service {
  @override
  Future<dynamic> GetApiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJson;
  }

  @override
  Future<dynamic> PostApiResponse(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;

    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJson;
  }

  @override
  Future<dynamic> PutApiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response =
          await http.put(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJson;
  }

  @override
  Future<dynamic> DeleteApiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response = await http
          .delete(Uri.parse(url))

          .timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 399:
        throw InternetException(response.body.toString());

      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 401:
        throw RequestTimeOut(response.body.toString());

      case 402:
        throw BadRequestException(response.body.toString());

      case 403:
        throw ServerException(response.body.toString());

      case 404:
        throw UnauthorisedException(response.body.toString());

      case 405:
        throw InvalidInputException(response.body.toString());

      default:
        throw FetchDataException(
            "\n Error Accorded While Communicating With Server \n ${response.statusCode}");
    }
  }
}
