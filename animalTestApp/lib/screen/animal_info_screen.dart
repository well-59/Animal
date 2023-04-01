import 'package:flutter/material.dart';
import 'package:package_name/screen/animal_medical_recordes_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';
import 'package:package_name/utils/ui_utils.dart';

class AnimalInformationScreen extends StatefulWidget {
  final String? titleString;
  final String? imageString;
  final Map? demoData;
  const AnimalInformationScreen(
      {super.key, this.titleString, this.imageString, this.demoData});

  @override
  State<AnimalInformationScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<AnimalInformationScreen> {
  String value = "3";
  // static const List<String> listYN = <String>['Y', 'N'];
  static const List<String> listNumbers = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  String selectNum = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              row([
                Column(
                  children: [
                    itemCel(widget.imageString ?? ""),
                  ],
                ),
              ], maa: Maa.center),
              space(h: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(color: Colors.purple, '醫療紀錄', () {
                    goto(
                      context,
                      AnimalMedicalRecordersScreen(
                        imageString: widget.imageString,
                      ),
                    );
                  }),
                  button(color: Colors.purple, '疫苗紀錄', () {}),
                  button(color: Colors.purple, '保險單', () {}),
                ],
              ),
              space(h: 20),
              text(size: 15, '晶片號碼: SK8712356789', color: Colors.blue),
              space(h: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "名字",
                  ),
                  Row(children: [
                    space(w: 5),
                    Row(children: [
                      const Text('結紮'),
                      space(w: 5),
                      const MyNewDropdownButton(),
                    ]),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "品種",
                  ),
                  Row(children: [
                    const Text('年齡'),
                    space(w: 5),
                    akiDropdownButton(selectNum, (v) {
                      setState(() {
                        selectNum = v;
                      });
                    }, listNumbers),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "領養日",
                  ),
                  Row(children: [
                    const Text(' '),
                    space(w: 100),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "領養機構",
                  ),
                  Row(children: [
                    const Text(' '),
                    space(w: 130),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "出生日期",
                  ),
                  Row(children: [
                    const Text(' '),
                    space(w: 130),
                  ]),
                ],
              ),
              space(h: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(color: green, '修改基本資料', () {}),
                ],
              ),
              // DemoButton.confirm(onPress: () {}, buttonText: "工廠按鈕確認鍵"),
              // DemoButton.cancel(onPress: () {}, buttonText: "工廠按鈕取消鍵")
              ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/images/bb.jpeg',
                    fit: BoxFit.contain,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
