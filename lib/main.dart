import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'navigator/named_navigator_impl.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light, statusBarColor: Color.fromRGBO(67, 84, 160, 1)));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: navKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH_ROUTE,
      onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
      navigatorKey: NamedNavigatorImpl.navigatorState,
      title: 'طاولة',
      theme: ThemeData(
          backgroundColor: Color.fromRGBO(247, 247, 247, 1),
          accentColor: Color.fromRGBO(67, 84, 160, 1),
          primaryColor: Color.fromRGBO(224, 131, 180, 1),
          fontFamily: 'Tajawal'),
    );
  }
}
