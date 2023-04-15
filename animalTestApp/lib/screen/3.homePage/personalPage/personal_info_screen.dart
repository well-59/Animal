import 'package:flutter/material.dart';
import 'package:package_name/utils/class/_statelessWidget.dart';
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
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text("(TW) 0800 000 000")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.email),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Animal_hippopotamus@gmail.com")
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.favorite, size: 30.0, color: Colors.teal),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your Favorites",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.account_balance_wallet,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.settings,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
