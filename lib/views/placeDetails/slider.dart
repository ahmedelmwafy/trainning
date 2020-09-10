import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget sliderCard({List images, BuildContext context}) {
  return Container(
    child: Swiper(
      autoplayDelay: 6000,
      autoplay: true,
      itemWidth: MediaQuery.of(context).size.width,
      itemHeight: MediaQuery.of(context).size.height / 2,
      layout: SwiperLayout.STACK,
      loop: false,
      onTap: (v) {},
      itemBuilder: (c, index) {
        return Wrap(
          runSpacing: 6.0,
          children: images.map((item) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images[index]), fit: BoxFit.cover),
                color: Theme.of(context).accentColor,
              ),
            );
          }).toList(),
        );
      },
      pagination: SwiperPagination(
        margin: EdgeInsets.only(top: 30.0),
        builder: DotSwiperPaginationBuilder(
            activeColor: Theme.of(context).accentColor,
            activeSize: 10.0,
            size: 5.0,
            color: Colors.grey),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
    ),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 2,
  );
}
