import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:tawla/models/home.dart';
import 'package:tawla/views/home/place_card.dart';

class PlacesList extends StatelessWidget {
  final HomeModel homeModel;

  PlacesList({this.homeModel});
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: homeModel.data.restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: PlaceCard(
                  name: homeModel.data.restaurants[index].name,
                  id: homeModel.data.restaurants[index].id,
                  image: homeModel.data.restaurants[index].mainImage,
                  address: homeModel.data.restaurants[index].address,
                  cat: homeModel.data.restaurants[index].category,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
