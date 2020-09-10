import 'package:flutter/material.dart';
import 'package:tawla/widgets/appBar.dart';
import 'package:tawla/widgets/auth_field.dart';
import 'package:tawla/widgets/custom_button.dart';

class ChangePasswordView extends StatefulWidget {
  @override
  _ChangePasswordViewState createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: customAppBar(
            context: context, title: 'تغيير كلمة المرور', opacity: false),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
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
              height: 30,
            ),
            _title(
              title: 'كملة المرور الحالية',
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
                onSave: (value) {},
                validate: (value) {
                  if (value.toString().isEmpty) {
                    return 'ادخل كلمة المرور ';
                  } else {
                    return null;
                  }
                }),
            SizedBox(
              height: 20,
            ),
            _title(
              title: 'كلمة المرور الجديدة',
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
                onSave: (value) {},
                validate: (value) {
                  if (value.toString().isEmpty) {
                    return 'ادخل كلمة المرور ';
                  } else {
                    return null;
                  }
                }),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'حفظ التعديل',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
