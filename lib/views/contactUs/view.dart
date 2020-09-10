import 'package:flutter/material.dart';
import 'package:tawla/widgets/appBar.dart';

class ContactUsView extends StatefulWidget {
  @override
  _ContactUsViewState createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: customAppBar(
                context: context, title: 'اتصل بنا', opacity: true),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo2.png',
                        width: 80,
                      )
                    ],
                  ),

                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
