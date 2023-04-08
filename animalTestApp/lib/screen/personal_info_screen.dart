import 'package:flutter/material.dart';
import 'package:package_name/utils/class/statelessWidget.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/ui_utils.dart';

class PersonalInformationScreen extends StatefulWidget {
  final String? titleString;
  final String? imageString;
  final Map? demoData;
  const PersonalInformationScreen(
      {super.key, this.titleString, this.imageString, this.demoData});

  @override
  State<PersonalInformationScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<PersonalInformationScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ItemImgWithText(widget.imageString ?? ""),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    // height: MediaQuery.of(context).size.height / 14,
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        const Image(
                          width: 30,
                          height: 80,
                          image: AssetImage('assets/images/kid.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                        ),
                        Column(
                          children: const [
                            Text('Total Cash'),
                            Text(
                              '\$ 1,000',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            )
                          ],
                        ),
                        // const Padding(
                        //   padding: EdgeInsets.only(right: 20),
                        // ),
                      ],
                    ),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(right: 20),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    // height: MediaQuery.of(context).size.sheight / 14,
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        const Image(
                          width: 30,
                          height: 80,
                          image: AssetImage('assets/images/kid.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                        ),
                        Column(
                          children: const [
                            Text('Total Coins'),
                            Text(
                              ' 1,000,000',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            )
                          ],
                        ),
                        // const Padding(
                        //   padding: EdgeInsets.only(right: 20),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(color: green, '修改基本資料', () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
