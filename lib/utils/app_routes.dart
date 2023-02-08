import 'package:flutter/material.dart';
import 'package:technical_task/presentation/home/detail_page.dart';
import 'package:technical_task/presentation/home/home_page.dart';
import 'package:technical_task/presentation/splash.dart';

class RouteNames {
  static const String splashScreen = '/';
  static const String homePage = '/homePage';
  static const String detailPage = '/detailPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());
      case RouteNames.homePage:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const HomePage());
      case RouteNames.detailPage:
        return MaterialPageRoute(
            settings: settings, builder: (_) => DetailPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
