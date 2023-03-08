import 'package:flutter/material.dart';

Future<void> goto(BuildContext context, Widget screen,
    {bool isReplaced = false}) {
  if (isReplaced) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  } else {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen));
  }
}
