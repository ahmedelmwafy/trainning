import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';

class PlaceCard extends StatelessWidget {
  final String image;
  final String name;
  final String cat;
  final String address;
  final int id;

  PlaceCard({this.address, this.cat, this.id, this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NamedNavigatorImpl()
            .push(Routes.PLACE_DETAILS_ROUTE, replace: false, clean: false);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Positioned(
                top: 14,
                left: 14,
                child: Container(
                  width: 100,
                  height: 35,
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.4)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      cat,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )),
            Positioned(
              bottom: 10,
              right: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        address,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.white70,
                        size: 17,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
