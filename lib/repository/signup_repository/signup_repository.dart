// ignore_for_file: non_constant_identifier_names

import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/app_url/app_urls.dart';

class SignupRepository {
  final _apiService = NetworkApiResponse();

  Future<dynamic> SignUpApi(var data) async {
    dynamic response =
        await _apiService.PostApiResponse(data, $AppUrl.loginApi);
    return response;
  }
}
