import 'package:flutter/material.dart';
import 'package:package_name/utils/tools.dart';

class ItemImgWithText extends StatelessWidget {
  const ItemImgWithText(this.imagesName,
      {this.width = 117, this.height = 117, super.key});
  final String imagesName;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/$imagesName.png')),
          ),
        ),
        Text(imagesName),
      ],
    );
  }
}

class ItemImgWithTextAndFunction extends StatelessWidget {
  const ItemImgWithTextAndFunction(this.imagesName, this.widget,
      {this.width = 117, this.height = 117, super.key});
  final String imagesName;
  final double width;
  final double height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        goto(context, widget);
      },
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/$imagesName.png')),
            ),
          ),
          Text(imagesName),
        ],
      ),
    );
  }
}

class ItemImgCircle extends StatelessWidget {
  const ItemImgCircle(this.imageName,
      {super.key, this.width = 117, this.height = 117});
  final String imageName;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/$imageName.png')),
          ),
        ),
      ],
    );
  }
}

class TextUnderline extends StatelessWidget {
  const TextUnderline(this.text,
      {super.key,
      this.size = 12,
      this.underline = false,
      this.color = Colors.black});
  final String text;
  final double size;
  final bool underline;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        decoration: (underline ? TextDecoration.underline : null),
      ),
    );
  }
}

class Space16 extends StatelessWidget {
  const Space16({super.key, this.width = 16, this.height = 16});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

class LoginInputButton extends StatelessWidget {
  const LoginInputButton(
      {super.key,
      required this.width,
      required this.height,
      this.labeltext,
      this.icons,
      this.textFontSize = 15,
      this.obscure = false,
      this.initialValue,
      this.borderRadiusColors = Colors.black,
      this.containerBorderRadius = 30});
  final double width;
  final double height;
  final String? labeltext;
  final dynamic icons;
  final Color borderRadiusColors;
  final double? textFontSize;
  final bool obscure;
  final String? initialValue;
  final double containerBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(containerBorderRadius),
        ),
        border: Border.all(width: 1.0, color: borderRadiusColors),
      ),
      child: TextFormField(
        obscureText: obscure,
        initialValue: initialValue,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icons,
            size: 20,
          ),
          labelText: labeltext,
          // labelStyle: const TextStyle(inherit: true, height: 10.0),
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: textFontSize,
        ),
      ),
    );
  }
}

//輸入框 尚需調整;
class MyInputButton extends StatelessWidget {
  final String? name;

  const MyInputButton({super.key, this.name});

  @override
  Widget build(BuildContext context, {Color color = Colors.black}) {
    return Row(children: [
      Container(
        margin: const EdgeInsets.only(right: 20),
        //mainAxisAlignment: MainAxisAlignment.start,
        child: TextUnderline(name ?? ""),
      ),
      // const Space16(width: 5),
      Container(
        margin: const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 30,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(width: 1.0, color: color),
        ),
        child: const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 16, bottom: 18),
            labelStyle: TextStyle(inherit: true, height: 10.0),
            border: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      )
    ]);
  }
}

class MyImage extends StatelessWidget {
  const MyImage(this.imgName,
      {this.width = 120,
      this.height = 120,
      this.color = Colors.white,
      super.key});
  final String imgName;
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$imgName",
      width: width,
      height: height,
      color: color,
    );
  }
}

class PurpleButton extends StatelessWidget {
  const PurpleButton({
    super.key,
    required this.text,
    required this.onChanged,
    this.buttonColor = Colors.purple,
    this.buttonRadius = 10,
    this.width = 100,
    this.height = 50,
  });
  final String text;
  final VoidCallback onChanged;
  final Color buttonColor;
  final double buttonRadius;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onChanged,
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Text(text),
        // child: Container(
        //     color: buttonColor,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(buttonRadius)),
        //     child: Text(txt)),
      ),
    );
  }
}

class TabBarList extends StatelessWidget {
  const TabBarList(
    this.index,
    this.pageNumber,
    this.image,
    this.truePageName,
    this.fallsPageName, {
    super.key,
    this.imgWidth = 30,
    this.imgHeight = 40,
    this.tabHeight = 75,
  });
  final int index;
  final int pageNumber;
  final String image;
  final String truePageName;
  final String fallsPageName;
  final double imgWidth;
  final double imgHeight;
  final double tabHeight;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: tabHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Space16(
            width: 3,
            height: 5,
          ),
          MyImage(image,
              width: imgWidth,
              height: imgHeight,
              color: index == pageNumber ? Colors.black : Colors.white),
          const Space16(
            width: 3,
            height: 5,
          ),
          TextUnderline(
            index == pageNumber ? truePageName : fallsPageName,
            size: 15,
            color: index == pageNumber ? Colors.black : Colors.white,
          ),
        ],
      ),
    );
  }
}

class SquareTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  const SquareTile({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
