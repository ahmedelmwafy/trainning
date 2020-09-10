import 'package:flutter/material.dart';

Widget customAppBar({BuildContext context, String title, bool opacity= false}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(color: Colors.black, fontSize: 17),
    ),
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        }),
    backgroundColor:
        opacity ? Colors.transparent : Theme.of(context).backgroundColor,
    elevation: 0,
  );
}
