import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/widgets/auth_field.dart';
import 'package:tawla/widgets/custom_button.dart';

class ForgetPasswordView extends StatefulWidget {
  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () {
                      NamedNavigatorImpl().pop();
                    }),
              ),
              body: ListView(
                children: [
                  SizedBox(
                    height: 80,
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
                    height: 50,
                  ),
                  Text(
                    'من فضلك ادخل رقم جوالك حتي تتمكن من تغيير',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' كلمة المرور الخاصة بك',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  _title(title: 'رقم الجوال'),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          inputField(
                              hint: 'رقم الجوال',
                              secure: false,
                              icon: false,
                              textInputType: TextInputType.number,
                              onSave: (value) {},
                              validate: (value) {
                                if (value.toString().isEmpty) {
                                  return 'ادخل رقم الجوال ';
                                } else {
                                  return null;
                                }
                              }),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    title: 'إرسال',
                  )
                ],
              ),
            ))
      ],
    );
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
}
