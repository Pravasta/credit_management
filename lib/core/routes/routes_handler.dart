import 'package:flutter_credit_management/feature/splash/view/splash_page.dart';
import 'package:flutter_credit_management/main.dart';
import 'package:flutter/material.dart';

import '../../feature/main/view/main_view.dart';
import 'routes_name.dart';

class RoutesHandler {
  final String initialRoutes = RoutesName.initial;
  static const initialNavbarVisibility = true;

  static MaterialPageRoute get _emptyPage {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Text('Not Found', style: appTextTheme(context).labelLarge),
          ),
        );
      },
    );
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => SplashPage(),
          settings: settings,
        );

      case RoutesName.main:
        return MaterialPageRoute(
          builder: (context) => const MainView(),
          settings: settings,
        );

      default:
        return _emptyPage;
    }
  }
}
