import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/views/home/bottom_sheet.dart';

Widget homeAppBar({BuildContext context}) {
  return AppBar(
    backgroundColor: Theme.of(context).backgroundColor,
    elevation: 0,
    automaticallyImplyLeading: false,
    actions: [
      InkWell(
        onTap: (){
          customBottomSheet(context);
        },
        child: Container(
          width: 35,
          height: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('assets/images/homeLogo.png'),
                  fit: BoxFit.cover)),
        ),
      )
    ],
    leading: Stack(
      children: [
        IconButton(
            icon: Image.asset(
              'assets/images/notification.png',
              width: 19.49,
              height: 20.75,
            ),
            onPressed: () {
              NamedNavigatorImpl()
                  .push(Routes.NOTIFICATION_ROUTE, replace: false, clean: false);
            }),
        Positioned(
            top: 13,
            left: 25,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(224, 130, 180, 1)),
            ))
      ],
    ),
  );
}
