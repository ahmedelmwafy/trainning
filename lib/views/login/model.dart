class LoginModel {
  int status;
  Data data;
  String messages;

  LoginModel({this.status, this.data, this.messages});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    messages = json['messages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['messages'] = this.messages;
    return data;
  }
}

class Data {
  int id;
  String name;
  String phone;
  String email;
  String image;
  String code;
  int isVerified;
  int isSuspended;
  String activationReason;
  int wallet;
  String token;

  Data(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.image,
      this.code,
      this.isVerified,
      this.isSuspended,
      this.activationReason,
      this.wallet,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    code = json['code'];
    isVerified = json['is_verified'];
    isSuspended = json['is_suspended'];
    activationReason = json['activation_reason'];
    wallet = json['wallet'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['image'] = this.image;
    data['code'] = this.code;
    data['is_verified'] = this.isVerified;
    data['is_suspended'] = this.isSuspended;
    data['activation_reason'] = this.activationReason;
    data['wallet'] = this.wallet;
    data['token'] = this.token;
    return data;
  }
}
