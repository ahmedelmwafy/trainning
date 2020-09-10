import 'package:flutter/material.dart';
import 'package:tawla/views/wallet/wallet_card_list.dart';
import 'package:tawla/widgets/appBar.dart';

class WalletView extends StatefulWidget {
  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: customAppBar(context: context, title: 'محفظتي'),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/w.png'))),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '24,000',
                  style: TextStyle(
                      fontSize: 57,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(224, 131, 180, 1)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'ريال',
                  style: TextStyle(
                      color: Color.fromRGBO(224, 131, 180, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            WalletCardList()
          ],
        ),
      ),
    );
  }
}
