import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonActions {
  // トーストmsgを表示する
  void showToastMsg({
    required String msgText,
  }) {
    Fluttertoast.showToast(
      msg: msgText,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.lightBlue,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }
}
