import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';
import 'package:tawla/views/home/bottom_sheet_card.dart';

void customBottomSheet(BuildContext ctx) {
  showModalBottomSheet(
      elevation: 5,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      context: ctx,
      builder: (_) {
        return StatefulBuilder(builder: (context, StateSetter setState) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: ListView(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.EDIT_PROFILE_ROUTE,
                          replace: false, clean: false);
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 34),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/images/setting.png',
                            width: 20,
                            height: 20,
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Ali Rabee',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '01023143519',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Icon(
                                    Icons.call,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://t3.ftcdn.net/jpg/02/28/19/90/240_F_228199002_629yPvnCihBMQWpDypHheWwqfEcKuASq.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BottomSheetCard(
                    title: 'حجوزاتي',
                    imageUrl: 'assets/images/res.png',
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.MY_RESERVATIONS_ROUTE,
                          replace: false, clean: false);
                    },
                  ),
                  BottomSheetCard(
                    title: 'محفظتي',
                    imageUrl: 'assets/images/wallet.png',
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.WALLET_ROUTE,
                          replace: false, clean: false);
                    },
                  ),
                  BottomSheetCard(
                    title: 'اتصل بنا',
                    imageUrl: 'assets/images/contact.png',
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.CONTACT_US_ROUTE,
                          replace: false, clean: false);
                    },
                  ),
                  BottomSheetCard(
                    title: 'عن التطبيق',
                    imageUrl: 'assets/images/about.png',
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.ABOUT_APP_ROUTE,
                          replace: false, clean: false);
                    },
                  ),
                  BottomSheetCard(
                    title: 'الشروط و الأحكام',
                    imageUrl: 'assets/images/privacy.png',
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.PRIVACY_ROUTE,
                          replace: false, clean: false);
                    },
                  ),
                  BottomSheetCard(
                    title: 'تسجيل خروج',
                    imageUrl: 'assets/images/logout.png',
                  ),
                ],
              ),
            ),
          );
        });
      });
}
