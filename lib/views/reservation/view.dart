import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/widgets/appBar.dart';

class ReservationView extends StatefulWidget {
  @override
  _ReservationViewState createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: customAppBar(
            context: context, title: 'تأكيد حجز طاولتك', opacity: false),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).backgroundColor,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              margin: EdgeInsets.only(left: 50, right: 50, top: 100),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    children: [
                      Text(
                        'موعد الحجز',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 15),
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'عدد الأفراد',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Container(
                          width: 129,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).backgroundColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _counter++;
                                    });
                                  }),
                              Text(
                                _counter.toString(),
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _counter > 1
                                          ? _counter--
                                          : _counter = _counter;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).backgroundColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2 - 90,
                              child: Text(
                                'مطعم ديري كوين',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      90,
                                  child: Text(
                                    'شارع الملك عبد العزيز - جدة',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '50',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          'ريال',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: MediaQuery.of(context).size.width / 2 - 35,
                top: 75,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage('assets/images/homeLogo.png'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        NamedNavigatorImpl().push(Routes.CONFIRM_RESERVATION_ROUTE,
                            replace: false, clean: false);
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).accentColor),
                        child: Center(
                          child: Text(
                            'تأكيد الحجز',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                width: 2, color: Theme.of(context).accentColor),
                            color: Theme.of(context).backgroundColor),
                        child: Center(
                          child: Text(
                            'إلغاء',
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).accentColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
