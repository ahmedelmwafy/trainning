import 'package:tawla/models/login/user.dart';

class User {
  int status;
  String msg;
  UserData userData;
  User({this.userData, this.status, this.msg});
  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userData =
        json['data'] != null ? new UserData.fromJson(json['data']) : null;
    msg = json['messages'];
  }
}
