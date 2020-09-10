import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Function onTap;
  BottomSheetCard({this.title, this.imageUrl, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 15,
            ),
            Image.asset(
              imageUrl,
              width: 20,
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
