import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/views/login/controller.dart';
import 'package:tawla/views/login/model.dart';
import 'package:tawla/widgets/auth_field.dart';
import 'package:tawla/widgets/custom_button.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginController _loginController = LoginController();
  LoginModel _loginModel = LoginModel();
  String _phone;
  String _password;
  bool _loading = false;

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _loading = true;
    });
    _loginModel = await _loginController.userLogin(
        phone: _phone,
        password: _password,
        deviceId: 'dfghjk',
        deviceType: 'ios',
        fcmToken: 'sdfghjkl;');
    setState(() {
      _loading = false;
    });
    if (_loginModel.status == 1) {
    } else {}
  }

  Widget _title({String title}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text(title)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black.withOpacity(0.1),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {
                          NamedNavigatorImpl().push(Routes.HOME_ROUTE,
                              replace: true, clean: true);
                        },
                        child: Text('تخطي')),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 80,
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                _title(
                  title: 'رقم الجوال',
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        inputField(
                            hint: '013838838338',
                            secure: false,
                            icon: false,
                            textInputType: TextInputType.number,
                            onSave: (value) {
                              setState(() {
                                _phone = value;
                              });
                            },
                            validate: (value) {
                              if (value.toString().isEmpty) {
                                return 'ادخل رقم الجوال ';
                              } else {
                                return null;
                              }
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        _title(
                          title: 'كلمة المرور',
                        ),
                        inputField(
                            hint: '********',
                            secure: true,
                            icon: true,
                            prefix: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Color.fromRGBO(243, 208, 227, 1),
                                ),
                                onPressed: null),
                            textInputType: TextInputType.text,
                            onSave: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                            validate: (value) {
                              if (value.toString().isEmpty) {
                                return 'ادخل كلمة المرور ';
                              } else {
                                return null;
                              }
                            }),
                      ],
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            NamedNavigatorImpl().push(
                                Routes.FORGET_PASSWORD_ROUTE,
                                replace: false,
                                clean: false);
                          },
                          child: Text('هل نسيت كلمة المرور ؟'))
                    ],
                  ),
                ),
                _loading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : CustomButton(
                        title: 'تسجيل دخول',
                        onTap: () {
                          _submitForm();
                        },
                      )
              ],
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {}, child: Text('لا تمتلك حساب؟ سجل الآن'))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
