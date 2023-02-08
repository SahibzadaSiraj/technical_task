import 'package:flutter/material.dart';
import 'package:technical_task/utils/app_routes.dart';
import 'package:technical_task/utils/app_string.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';
import 'package:technical_task/widgets/sized_box.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, RouteNames.homePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/flutter_logo.png",
            width: 100,
            height: 100,
          ),
          CustomSizeBox(
            width: 0,
            height: 20,
          ),
          TextWidgetClass.customText(
              text: AppString.appName,
              textStyle: TextWidgetClass.customTextStyle(
                  textSize: 14,
                  textWeight: FontWeight.bold,
                  color: Colors.black))
        ]),
      ),
    );
  }
}
