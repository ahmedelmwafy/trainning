import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/widgets/custom_button.dart';

class ConfirmReservationView extends StatefulWidget {
  @override
  _ConfirmReservationViewState createState() => _ConfirmReservationViewState();
}

class _ConfirmReservationViewState extends State<ConfirmReservationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/confirm.png',
                width: MediaQuery.of(context).size.width / 2,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text('تم إرسال طلبك بنجاح إلى صاحب المطعم'),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            title: 'العودة للرئيسية',
            onTap: () {
              NamedNavigatorImpl()
                  .push(Routes.HOME_ROUTE, replace: true, clean: true);
            },
          )
        ],
      ),
    );
  }
}
