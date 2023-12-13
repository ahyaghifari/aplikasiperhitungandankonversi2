import 'package:flutter/material.dart';

class MyAppBar {
  static AppBar myAppBar(Color bgColor, String title) {
    return AppBar(
      backgroundColor: bgColor,
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
      elevation: 0,
    );
  }
}
