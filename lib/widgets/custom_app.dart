import 'package:flutter/material.dart';
import 'package:technical_task/utils/app_contants.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';

AppBar appBar(
    {required String title,
    required BuildContext context,
    required bool back}) {
  return AppBar(
    backgroundColor: primaryColor,
    title: Text(
      title,
      style: TextWidgetClass.customTextStyle(
          textSize: 16, textWeight: FontWeight.bold, color: Colors.white),
    ),
    centerTitle: true,
    leading: back
        ? InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: whitleColor,
            ),
          )
        : Container(),
  );
}
