import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tawla/helpers/shared_prefrence.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  String _userToken;
  @override
  void initState() {
    _checkUserAuth();
    Timer(
        Duration(seconds: 2),
        () => _userToken == null
            ? NamedNavigatorImpl()
                .push(Routes.HOME_ROUTE, replace: true, clean: true)
            : NamedNavigatorImpl()
                .push(Routes.HOME_ROUTE, replace: true, clean: true));
    super.initState();
  }

  _checkUserAuth() async {
    String _token = await getCurrentUser();
    setState(() {
      _userToken = _token;
      print(_userToken);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/splashLogo.png',
                  width: 100,
                ),
                Positioned(
                    left: 60,
                    top: 8,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.red),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
