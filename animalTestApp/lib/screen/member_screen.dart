import 'package:flutter/material.dart';
import 'package:package_name/utils/class/statelessWidget.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  List<String> nameArr = [
    "littleDinosaur",
    "bear",
    "titanColossal",
    "will",
    "cat",
  ];
  List<String> empty = [
    "add",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            // 每列三個圈,依照寵物數量新增圈,及row
            // 並且有一個寵物新增按鈕
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: nameArr
                            .map((e) => ItemImgWithText(
                                  e,
                                  width: 100,
                                  height: 80,
                                ))
                            .toList(),
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: empty
                      .map(
                        (e) => ItemImgWithText(
                          e,
                          width: 100,
                          height: 80,
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
