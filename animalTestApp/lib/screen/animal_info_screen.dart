import 'package:flutter/material.dart';
import 'package:package_name/utils/ui_utils.dart';

class AnimalInformationScreen extends StatefulWidget {
  const AnimalInformationScreen({
    super.key,
  });

  @override
  State<AnimalInformationScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<AnimalInformationScreen> {
  String photo = 'hippopotamus';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              row([
                Column(
                  children: [
                    itemCel(photo),
                  ],
                ),
              ], maa: Maa.center),
              space(h: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button('醫療紀錄', () {}),
                  button('疫苗紀錄', () {}),
                  button('保險單', () {}),
                ],
              ),
              text('晶片號碼: SK8712356789', color: Colors.blue),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyInputButton(),
                  // Row(children: [
                  //   text('名字'),
                  //   space(w: 5),
                  //   Container(
                  //     margin: const EdgeInsets.only(
                  //         left: 0.0, top: 10.0, bottom: 10.0),
                  //     width: screenW / 3,
                  //     height: screenH / 30,
                  //     decoration: BoxDecoration(
                  //       borderRadius:
                  //           const BorderRadius.all(Radius.circular(30.0)),
                  //       border: Border.all(width: 1.0, color: Colors.black),
                  //     ),
                  //     child: const TextField(
                  //       decoration: InputDecoration(
                  //         prefix: Text(' '),
                  //         labelStyle: TextStyle(inherit: true, height: 10.0),
                  //         border: InputBorder.none,
                  //       ),
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //       ),
                  //     ),
                  //   )
                  // ]),

                  Row(children: [
                    text('結紮'),
                    textbutton(130, 40, '', Icons.hourglass_empty, Colors.black)
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
