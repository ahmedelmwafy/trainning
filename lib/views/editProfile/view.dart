import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/views/editProfile/profile_image.dart';
import 'package:tawla/widgets/appBar.dart';
import 'package:tawla/widgets/auth_field.dart';
import 'package:tawla/widgets/custom_button.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
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
        appBar: customAppBar(context: context, title: 'تعديل بياناتي الشخصية'),
        body: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            ProfileImage(),
            SizedBox(
              height: 30,
            ),
            _title(title: 'الاسم'),
            inputField(
              hint: 'Ali Rabee',
              secure: false,
              icon: false,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
            ),
            _title(title: 'البريد الإلكتروني'),
            inputField(
              hint: 'info@tawla.com',
              secure: false,
              icon: false,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            _title(title: 'رقم الجوال'),
            inputField(
              hint: '01123456789',
              secure: false,
              icon: false,
              textInputType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'حفظ التعديل',
              onTap: () {},
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                NamedNavigatorImpl()
                    .push(Routes.CHANGE_PASSWORD_ROUTE, replace: false, clean: false);
              }, child: Text('هل تريد تغير كلمة المرور ؟'))
            ],
          ),
        ),
      ),
    );
  }
}
