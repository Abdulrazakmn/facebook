 import 'package:flutter/material.dart';

Widget HeaderButton(
      {required String buttontext,
      required IconData iconData,
      required Function() buttonaction,
      required Color iconcolour}) {
    return TextButton.icon(
        onPressed: buttonaction,
        icon: Icon(
          iconData,
          color: iconcolour,
        ),
        label: Text(
          buttontext,
          style: TextStyle(color: Colors.black),
        ));
  }