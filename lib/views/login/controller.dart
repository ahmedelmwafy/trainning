import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tawla/apiProvider/api_provider.dart';
import 'package:tawla/views/login/model.dart';

class LoginController {
  NetWork _netWork = NetWork();
  LoginModel _loginModel = LoginModel();
  Future<LoginModel> userLogin(
      {String phone,
      String password,
      String deviceId,
      String deviceType,
      String fcmToken}) async {
    Map<String, dynamic> _body = {
      'phone': phone,
      'password': password,
      'device_id': deviceId,
      'type': deviceType,
      'fcm_token': fcmToken,
    };
    FormData _formData = FormData.fromMap(_body);
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    var response =
        await _netWork.postData(url: '/auth/login', formData: _formData);
    if (response['status'] == 200) {
      _loginModel = LoginModel.fromJson(response);
      _prefs.setString('token', _loginModel.data.token);
    } else {
      _loginModel =
          LoginModel(status: 1, messages: response['messages'], data: null);
    }
    return _loginModel;
  }
}
