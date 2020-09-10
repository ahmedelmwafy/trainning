import 'package:flutter/material.dart';

class WorkDaysCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2-50,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Text('السبت', style: TextStyle(fontSize: 12),),

        Text('10',style: TextStyle(fontSize: 12))
      ],),
    );
  }
}
