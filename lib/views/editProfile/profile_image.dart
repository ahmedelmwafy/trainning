import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://t3.ftcdn.net/jpg/02/28/19/90/240_F_228199002_629yPvnCihBMQWpDypHheWwqfEcKuASq.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 90,
              right: 10,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(224, 131, 180, 1),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/image.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
