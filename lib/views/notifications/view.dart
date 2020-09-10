import 'package:flutter/material.dart';
import 'package:tawla/views/notifications/notifications_list.dart';
import 'package:tawla/widgets/appBar.dart';

class NotificationsView extends StatefulWidget {
  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: customAppBar(context: context, title: 'الاشعارات'),
        body: NotificationList(),
      ),
    );
  }
}
