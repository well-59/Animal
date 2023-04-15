import 'package:flutter/material.dart';
import 'package:package_name/screen/4.petPage/petMedicalPage/animal_medical_recorders_screen.dart';
import 'package:package_name/utils/class/_statefulWidget.dart';
import 'package:package_name/utils/class/_statelessWidget.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/enum/enum.dart';
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
  List<String> listNumbers = <String>[
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
  String value = '3';
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
                    ItemImgWithText(widget.imageString ?? ""),
                  ],
                ),
              ], maa: Maa.center),
              const Space16(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PurpleButton(
                    buttonColor: Colors.purple,
                    text: '醫療紀錄',
                    onChanged: () {
                      goto(
                        context,
                        AnimalMedicalRecordersScreen(
                          imageString: widget.imageString,
                        ),
                      );
                    },
                  ),
                  PurpleButton(
                    buttonColor: Colors.purple,
                    text: '疫苗紀錄',
                    onChanged: () {},
                  ),
                  PurpleButton(
                    buttonColor: Colors.purple,
                    text: '保險單',
                    onChanged: () {},
                  ),
                ],
              ),
              const Space16(
                height: 20,
              ),
              const TextUnderline(
                '晶片號碼: SK8712356789',
                size: 15,
                color: Colors.blue,
              ),
              const Space16(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "名字",
                  ),
                  Row(children: [
                    const Space16(
                      width: 5,
                    ),
                    Row(children: const [
                      Text('結紮'),
                      Space16(
                        width: 5,
                      ),
                      MyNewDropdownButton(),
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
                    const Space16(
                      width: 5,
                    ),
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
                  Row(children: const [
                    Text(' '),
                    Space16(
                      width: 100,
                    ),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "領養機構",
                  ),
                  Row(children: const [
                    Text(' '),
                    Space16(
                      width: 130,
                    ),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyInputButton(
                    name: "出生日期",
                  ),
                  Row(children: const [
                    Text(' '),
                    Space16(
                      width: 130,
                    ),
                  ]),
                ],
              ),
              const Space16(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(color: green, '修改基本資料', () {}),
                ],
              ),
              // DemoButton.confirm(onPress: () {}, buttonText: "工廠按鈕確認鍵"),
              // DemoButton.cancel(onPress: () {}, buttonText: "工廠按鈕取消鍵")
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(40),
              //   child: Image.asset(
              //     'assets/images/bb.jpeg',
              //     fit: BoxFit.contain,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
