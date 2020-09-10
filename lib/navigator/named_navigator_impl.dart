import 'package:flutter/material.dart';
import 'package:tawla/views/aboutApp/view.dart';
import 'package:tawla/views/changePassword/view.dart';
import 'package:tawla/views/confirmReservation/view.dart';
import 'package:tawla/views/contactUs/view.dart';
import 'package:tawla/views/editProfile/view.dart';
import 'package:tawla/views/forgetPassword/view.dart';
import 'package:tawla/views/home/view.dart';
import 'package:tawla/views/login/view.dart';
import 'package:tawla/views/myReservations/view.dart';
import 'package:tawla/views/notifications/view.dart';
import 'package:tawla/views/placeDetails/view.dart';
import 'package:tawla/views/privacy/view.dart';
import 'package:tawla/views/reservation/view.dart';
import 'package:tawla/views/search/view.dart';
import 'package:tawla/views/splash/view.dart';
import 'package:tawla/views/wallet/view.dart';
import 'named_navigator.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH_ROUTE:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.NOTIFICATION_ROUTE:
        return MaterialPageRoute(builder: (_) => NotificationsView());
      case Routes.PLACE_DETAILS_ROUTE:
        return MaterialPageRoute(builder: (_) => PlaceDetailsView());
      case Routes.EDIT_PROFILE_ROUTE:
        return MaterialPageRoute(builder: (_) => EditProfileView());
      case Routes.WALLET_ROUTE:
        return MaterialPageRoute(builder: (_) => WalletView());
      case Routes.ABOUT_APP_ROUTE:
        return MaterialPageRoute(builder: (_) => AboutAppView());
      case Routes.PRIVACY_ROUTE:
        return MaterialPageRoute(builder: (_) => PrivacyView());
      case Routes.MY_RESERVATIONS_ROUTE:
        return MaterialPageRoute(builder: (_) => MyReservationsView());
      case Routes.SEARCH_ROUTE:
        return MaterialPageRoute(builder: (_) => SearchView());
      case Routes.CONTACT_US_ROUTE:
        return MaterialPageRoute(builder: (_) => ContactUsView());
      case Routes.LOGIN_ROUTE:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.FORGET_PASSWORD_ROUTE:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());
      case Routes.RESERVATION_ROUTE:
        return MaterialPageRoute(builder: (_) => ReservationView());
      case Routes.CONFIRM_RESERVATION_ROUTE:
        return MaterialPageRoute(builder: (_) => ConfirmReservationView());
      case Routes.CHANGE_PASSWORD_ROUTE:
        return MaterialPageRoute(builder: (_) => ChangePasswordView());
    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }
}
