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

Widget textbutton(
    double w, double h, String? labeltext, dynamic icons, Color colors) {
  return Container(
    margin: const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
    width: w,
    height: h,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(width: 1.0, color: colors),
    ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icons,
          size: 20,
        ),
        labelText: labeltext,
        labelStyle: const TextStyle(inherit: true, height: 10.0),
        border: InputBorder.none,
      ),
      style: const TextStyle(
        fontSize: 15.0,
      ),
    ),
  );
}

enum Maa { start, center, spaceEvenly, spaceBetween }

Widget row(List<Widget> children, {Maa maa = Maa.center}) {
  var aa = MainAxisAlignment.start;

  if (maa == Maa.start) {
    aa = MainAxisAlignment.start;
  } else if (maa == Maa.center) {
    aa = MainAxisAlignment.center;
  } else if (maa == Maa.spaceBetween) {
    aa = MainAxisAlignment.spaceBetween;
  } else if (maa == Maa.spaceEvenly) {
    aa = MainAxisAlignment.spaceEvenly;
  }
  return Row(
    mainAxisAlignment: aa,
    children: children,
  );
}

BottomNavigationBarItem bottomNavigationBar(String image, String truePageName) {
  return BottomNavigationBarItem(
    icon: img(image, w: 10, h: 10),
    label: truePageName,
  );
}

Widget tabBar(int index, int pageNumber, String image, String truePageName,
    String fallsPageName) {
  return Tab(
    // icon: img(image, w: 10, h: 10),
    // text: "首頁",
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // space(h: 10),
        // const Icon(Icons.abc),
        // space(w: 3, h: 10),
        img(image, w: 10, h: 10),
        space(w: 3, h: 5),
        text(index == pageNumber ? truePageName : fallsPageName)
      ],
    ),
  );
}
