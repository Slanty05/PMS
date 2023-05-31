// ignore_for_file: camel_case_types

import 'package:pms/data/response/status.dart';

class Api_Response<T>{

  Status? status;
  T? data;
  String? message;

  Api_Response(this.status, this.data, this.message);

  Api_Response.loading() : status = Status.LOADING;

  Api_Response.completed(this.data) : status = Status.COMPLETED;

  Api_Response.error(this.message) : status = Status.ERROR;

  @override
  String toString(){
    return "Status : $status \n Message : $message \n Data : $data";
  }

}