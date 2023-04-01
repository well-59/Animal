import 'package:flutter/material.dart';
import 'package:package_name/utils/ui_utils.dart';

class AnimalMedicalRecordersScreen extends StatefulWidget {
  final String? titleString;
  final String? imageString;

  const AnimalMedicalRecordersScreen({
    super.key,
    this.titleString,
    this.imageString,
  });

  @override
  State<AnimalMedicalRecordersScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<AnimalMedicalRecordersScreen> {
  // String value = "3";

  String name = 'marco';
  static const List<String> listDate = <String>[
    '2023/02/01',
    '2023/02/02',
    '2023/02/03',
    '2023/02/04',
    '2023/02/05',
    '2023/02/06',
    '2023/02/07',
    '2023/02/08',
    '2023/02/09',
    '2023/02/10',
    '2023/02/11'
  ];

  String selectDate = '2023/02/01';
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
        child: ListView(
          children: [
            Row(children: [
              Row(children: [
                row([
                  Column(
                    children: [
                      itemCircle(widget.imageString ?? ""),
                    ],
                  ),
                ], maa: Maa.center),
              ]),
              Column(children: [
                Text(
                  '$name醫療紀錄',
                  style: const TextStyle(fontSize: 20),
                ),
                text(size: 15, '晶片號碼: SK8712356789', color: Colors.blue),
              ])
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('從'),
                space(w: 3),
                akiDropdownButton(selectDate, (v) {
                  setState(() {
                    selectDate = v;
                  });
                }, listDate),
                const Text('~'),
                space(w: 3),
                akiDropdownButton(selectDate, (v) {
                  setState(() {
                    selectDate = v;
                  });
                }, listDate),
                space(w: 3),
                const Text('到')
              ],
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('日期時間'),
                    space(w: 10),
                    const Text('醫院名稱'),
                    space(w: 10),
                    const Text('診斷資料')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
