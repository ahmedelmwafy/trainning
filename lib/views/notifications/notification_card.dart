import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/notification.png',
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '03:40 PM',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('وافق مطعم ديري كوين على طلب الحجز الخاص بك رقم 15537')
        ],
      ),
    );
  }
}
