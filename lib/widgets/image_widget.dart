import 'package:flutter/material.dart';

class CustomImage {
  static Widget imageNetwork(String url) {
    return Image.network(
      url,
      height: 120,
      fit: BoxFit.cover,
    );
  }
}
