import 'package:flutter/material.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/ui_utils.dart';

class AnimalInformationScreen extends StatefulWidget {
  final String? titleString;
  final String? imageString;

  const AnimalInformationScreen({
    super.key,
    this.titleString,
    this.imageString,
  });

  @override
  State<AnimalInformationScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<AnimalInformationScreen> {
  String value = "3";

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
                button(color: Colors.purple, '醫療紀錄', () {}),
                button(color: Colors.purple, '疫苗紀錄', () {}),
                button(color: Colors.purple, '保險單', () {}),
              ],
            ),
            space(h: 20),
            text(size: 15, '晶片號碼: SK8712356789', color: Colors.blue),
            space(h: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                MyInputButton(
                  name: "名字",
                ),
                // 下拉選單
                // DropdownButton(
                //   items: [
                //     DropdownMenuItem(
                //       child: text('txt'),
                //     ),
                //   ],
                //   onChanged: (selectValue) {
                //     //選中後的回撥
                //     setState(() {
                //       value = selectValue;
                //     });
                //   },
                // ),
                MyInputButton(
                  name: "結紮",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                MyInputButton(
                  name: "品種",
                ),
                MyInputButton(
                  name: "年齡",
                ),
              ],
            ),
            Row(
              children: [
                space(w: 10),
                const MyInputButton(
                  name: "領養日",
                ),
              ],
            ),
            Row(
              children: [
                space(w: 10),
                const MyInputButton(
                  name: "領養機構",
                ),
              ],
            ),
            Row(
              children: [
                space(w: 10),
                const MyInputButton(
                  name: "出生日期",
                ),
              ],
            ),
            space(h: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(color: green, '修改基本資料', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
