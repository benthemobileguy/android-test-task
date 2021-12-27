import 'package:android_test_task/presentation/pages/menu/menu_screen.dart';
import 'package:android_test_task/presentation/pages/pin-code-auth/authentication_by_pin_code_screen.dart';
import 'package:android_test_task/presentation/pages/pin-code/create_pin_code_screen.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String createPinCodeRoute = "/createPinCode";
  static const String authenticationByPinRoute = "/authPin";
  static const String menuRoute = "/menuRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.menuRoute:
        return MaterialPageRoute(builder: (_) => MenuView());
      case Routes.authenticationByPinRoute:
        return MaterialPageRoute(builder: (_) => AuthenticationByPinCodeView());
      case Routes.createPinCodeRoute:
        return MaterialPageRoute(builder: (_) => CreatePinCodeView());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(AppStrings.noRouteFound),
          ),
          body: Center(child: Text(AppStrings.noRouteFound)),
        ));
  }

}