import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_task/utils/app_contants.dart';

class MyTheme {
  static final borderRadius = BorderRadius.circular(0);
  static final theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: primaryColor),
    colorScheme: const ColorScheme.light(secondary: secondoryColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: secondoryColor, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: secondoryColor),
      elevation: 0,
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        caption: TextStyle(fontSize: 12, height: 1.83),
        bodyText1:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.375),
        bodyText2: TextStyle(fontSize: 14, height: 1.5714),
        button: TextStyle(fontSize: 16, height: 2, fontWeight: FontWeight.w600),
        // titleLarge: const TextStyle(
        //     fontSize: 16, height: 2, fontWeight: FontWeight.w600),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 64),
        primary: secondoryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
  );
}
