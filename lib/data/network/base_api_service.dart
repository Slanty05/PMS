// ignore_for_file: camel_case_types, non_constant_identifier_names

abstract class Base_Api_Service {
  Future<dynamic> GetApiResponse(String url);

  Future<dynamic> PostApiResponse(dynamic data, String url);

  Future<dynamic> PutApiResponse(String url);

  Future<dynamic> DeleteApiResponse(String url);
}
