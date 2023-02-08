import 'package:flutter/material.dart';
import 'package:technical_task/utils/app_routes.dart';
import 'package:technical_task/utils/app_string.dart';
import 'package:technical_task/utils/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: MyTheme.theme,
      onGenerateRoute: RouteNames.generateRoute,
      initialRoute: RouteNames.splashScreen,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}
