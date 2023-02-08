import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  double width;
  double height;

  CustomSizeBox({super.key, this.width = 0, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
