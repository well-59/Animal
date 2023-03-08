import 'package:flutter/material.dart';

Widget space({double w = 16, double h = 16}) {
  return SizedBox(
    height: h,
    width: w,
  );
}

Widget text(String txt,
    {double size = 12, bool underline = false, Color color = Colors.black}) {
  return Text(txt,
      style: TextStyle(
          fontSize: size,
          color: color,
          decoration: (underline ? TextDecoration.underline : null)));
}

Widget input(Function callBack, {TextInputType keyboard = TextInputType.text}) {
  return TextField(
    onChanged: (v) {
      callBack(v);
    },
    keyboardType: keyboard,
  );
}

GestureDetector gesture(Widget child, {required Null Function() click}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    child: child,
    onTap: () {
      click();
    },
  );
}

Widget img(String imgName, {double w = 120, double h = 120}) {
  return Image.asset(
    "assets/images/$imgName",
    width: w,
    height: h,
  );
}

Widget button(String txt, Function fun) {
  return ElevatedButton(
      onPressed: () {
        fun();
      },
      child: Text(txt));
}
