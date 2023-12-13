import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class MyToast {
  static void showToast(FToast fToast, String message, IconData icon) {
    Widget toast = Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black87,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }
}
