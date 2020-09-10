import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/views/placeDetails/data_card.dart';
import 'package:tawla/views/placeDetails/slider.dart';
import 'package:tawla/views/placeDetails/work_days_list.dart';
import 'package:tawla/widgets/custom_button.dart';

class PlaceDetailsView extends StatefulWidget {
  @override
  _PlaceDetailsViewState createState() => _PlaceDetailsViewState();
}

class _PlaceDetailsViewState extends State<PlaceDetailsView> {
  List<String> _images = [
    'https://image.freepik.com/free-photo/top-view-meat-with-copy-space_23-2148611055.jpg',
    'https://image.freepik.com/free-photo/flat-lay-pink-hydrangea-flowers-with-blank-circle_23-2148615369.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              // ignore: missing_required_param
              sliderCard(context: context, images: _images),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Theme.of(context).accentColor,
                            ),
                            onPressed: () {
                              NamedNavigatorImpl().pop();
                            })),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'مفتوح الآن',
                  style: TextStyle(
                      color: Color.fromRGBO(3, 180, 13, 1), fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'مطعم ديري كوين',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'شارع الملك عبد العزيز - جدة',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'سلسلة مطاعم ديري كوين في جدة تقدم لكم أشهي المأكولات المشوية اللذيذة و المحببة لدي الصغار و الكبار فمكان عائلتك المفضل عندنا نحن في انتظارك بادر بحجز طاولتك',
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DataCard(
            title: '3 أيام',
            desc: 'فترة السماح بإلغاء الحجز',
            imageUrl: 'assets/images/allow.png',
          ),
          DataCard(
            title: '50 ريال',
            desc: 'مبلغ تأكيد الحجز',
            imageUrl: 'assets/images/wallet.png',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'مواعيد العمل',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          WorkDaysList(),
          CustomButton(
            title: 'احجز طاولتك الآن',
            onTap: () {
              NamedNavigatorImpl()
                  .push(Routes.RESERVATION_ROUTE, replace: false, clean: false);
            },
          )
        ],
      ),
    );
  }
}
