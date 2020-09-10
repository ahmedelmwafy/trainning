import 'package:flutter/material.dart';
import 'package:tawla/views/placeDetails/work_days_card.dart';

class WorkDaysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return WorkDaysCard();
          }),
    );
  }
}
