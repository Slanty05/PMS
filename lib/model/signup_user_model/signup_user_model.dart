class SignupUserModel {
  String? token;
  bool? isLogin;

  SignupUserModel({this.token, this.isLogin});

  SignupUserModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    isLogin = json['isLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['isLogin'] = token;
    return data;
  }
}
