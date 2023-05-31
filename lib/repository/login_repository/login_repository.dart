import 'package:pms/data/network/network_api_service.dart';
import 'package:pms/res/app_url/app_urls.dart';

class LoginRepository {
  final _apiService = NetworkApiResponse();

  Future<dynamic> loginApi(var data) async {
    dynamic response =
        await _apiService.PostApiResponse(data, $AppUrl.loginApi);
    return response;
  }
}
