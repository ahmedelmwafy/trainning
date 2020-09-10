class UserData {
  int userId;
  String userName;
  String userEmail;
  String userPhone;
  String userImage;
  String userCode;
  String userToken;
  int isVerified;
  int isSuspended;

  UserData(
      {this.isSuspended,
      this.isVerified,
      this.userCode,
      this.userEmail,
      this.userId,
      this.userImage,
      this.userName,
      this.userPhone,
      this.userToken});

  UserData.fromJson(Map<String, dynamic> json) {
    isSuspended = json['is_suspended'];
    isVerified = json['is_verified'];
    userCode = json['code'];
    userEmail = json['email'];
    userId = json['id'];
    userToken = json['token'];
    userImage = json['image'];
    userName = json['name'];
    userPhone = json['phone'];
  }
}
