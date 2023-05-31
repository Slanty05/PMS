// ignore_for_file: camel_case_types

class App_Exception implements Exception {
  final _message;
  final _prefix;

  App_Exception([this._message, this._prefix]);

  String toString() {
    return '$_message $_prefix';
  }
}

class FetchDataException extends App_Exception {
  FetchDataException([String? message])
      : super(message, "Error During Connection");
}

class InvalidUrlException extends App_Exception {
  InvalidUrlException([String? message]) : super(message, "Invalid URL");
}

class InternetException extends App_Exception {
  InternetException([String? message]) : super(message, "No Internet");
}

class RequestTimeOut extends App_Exception {
  RequestTimeOut([String? message]) : super(message, "Request Time Out");
}

class ServerException extends App_Exception {
  ServerException([String? message]) : super(message, "Server Error Occurred");
}

class BadRequestException extends App_Exception {
  BadRequestException([String? message]) : super(message, "Invalid Request");
}

class UnauthorisedException extends App_Exception {
  UnauthorisedException([String? message])
      : super(message, "Unauthorised Request");
}

class InvalidInputException extends App_Exception {
  InvalidInputException([String? message]) : super(message, "Invalid Input");
}
