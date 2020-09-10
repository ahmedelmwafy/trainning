class Routes {
  static const SPLASH_ROUTE = "SPLASH_ROUTE";
  static const HOME_ROUTE = "HOME_ROUTE";
  static const NOTIFICATION_ROUTE = "NOTIFICATION_ROUTE";
  static const PLACE_DETAILS_ROUTE = "PLACE_DETAILS_ROUTE";
  static const EDIT_PROFILE_ROUTE = "EDIT_PROFILE_ROUTE";
  static const WALLET_ROUTE = "WALLET_ROUTE";
  static const ABOUT_APP_ROUTE = "ABOUT_APP_ROUTE";
  static const PRIVACY_ROUTE = "PRIVACY_ROUTE";
  static const MY_RESERVATIONS_ROUTE = "MY_RESERVATIONS_ROUTE";
  static const SEARCH_ROUTE = "SEARCH_ROUTE";
  static const CONTACT_US_ROUTE = "CONTACT_US_ROUTE";
  static const LOGIN_ROUTE = "LOGIN_ROUTE";
  static const FORGET_PASSWORD_ROUTE = "FORGET_PASSWORD_ROUTE";
  static const RESERVATION_ROUTE = "RESERVATION_ROUTE";
  static const CONFIRM_RESERVATION_ROUTE = "CONFIRM_RESERVATION_ROUTE";
  static const CHANGE_PASSWORD_ROUTE = "CHANGE_PASSWORD_ROUTE";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
