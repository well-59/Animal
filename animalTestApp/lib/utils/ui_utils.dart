import 'package:flutter/material.dart';
import 'package:package_name/utils/class/statelessWidget.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/enum/enum.dart';

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

Widget img(String imgName, {double w = 120, double h = 120, Color c = white}) {
  return Image.asset(
    "assets/images/$imgName",
    width: w,
    height: h,
    color: c,
  );
}

Widget button(String txt, Function fun, {Color color = Colors.blue}) {
  return ElevatedButton(
    onPressed: () {
      fun();
    },
    style: OutlinedButton.styleFrom(
      backgroundColor: color,
    ),
    child: Text(txt),
  );
}

Widget textbutton(
  double w,
  double h,
  String? labeltext,
  dynamic icons,
  Color colors,
) {
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

Widget row(
  List<Widget> children, {
  Maa maa = Maa.center,
}) {
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
    height: 75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Space16(
          width: 3,
          height: 5,
        ),
        img(image, w: 30, h: 40, c: index == pageNumber ? black : white),
        const Space16(
          width: 3,
          height: 5,
        ),
        text(
            size: 15,
            index == pageNumber ? truePageName : fallsPageName,
            color: index == pageNumber ? black : white)
      ],
    ),
  );
}

Widget itemCel(String e, {double w = 117, double h = 117}) {
  return Column(
    children: [
      Container(
        width: w,
        height: h,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('assets/images/$e.png')),
        ),
      ),
      Text(e),
    ],
  );
}

Widget itemCircle(String e, {double w = 117, double h = 117}) {
  return Column(
    children: [
      Container(
        width: w,
        height: h,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('assets/images/$e.png')),
        ),
      ),
    ],
  );
}

Widget akiDropdownButton(
    String selectedV, Function doSelect, List<String> items) {
  return DropdownButton<String>(
    value: selectedV,
    // icon: const Icon(Icons.arrow_downward),
    // elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    // underline: Container(
    //   height: 2,
    //   color: Colors.deepPurpleAccent,
    // ),
    onChanged: (String? value) {
      doSelect(value);
    },
    items: items.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}

class DemoButton extends StatelessWidget {
  const DemoButton(
      {super.key,
      required this.buttonText,
      this.textColor = Colors.red,
      this.height = 36,
      this.width = 230,
      this.buttonColor = Colors.black,
      required this.onPress});
  final String buttonText;
  final Color textColor;
  final double height;
  final double width;
  final Color buttonColor;
  final VoidCallback onPress;

  const DemoButton.confirm(
      {super.key, required this.onPress, required this.buttonText})
      : height = 36,
        width = 230,
        buttonColor = Colors.blue,
        textColor = Colors.black;

  const DemoButton.cancel(
      {super.key, required this.onPress, required this.buttonText})
      : height = 36,
        width = 230,
        buttonColor = Colors.red,
        textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 12, color: textColor),
        ),
      ),
    );
  }
}
