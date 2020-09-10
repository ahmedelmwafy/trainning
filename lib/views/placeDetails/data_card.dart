import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;
  DataCard({this.imageUrl, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                desc,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(230, 231, 238, 1)),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
