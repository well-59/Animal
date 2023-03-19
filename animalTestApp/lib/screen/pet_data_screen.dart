import 'package:flutter/material.dart';
import 'package:package_name/utils/ui_utils.dart';

class PetDataScreen extends StatefulWidget {
  const PetDataScreen({super.key});

  @override
  State<PetDataScreen> createState() => _PetDataScreenState();
}

class _PetDataScreenState extends State<PetDataScreen> {
  List<String> nameArr = [
    "Oasis",
    "梁動物",
    "PrinceHospital",
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
            children: [
              // 北部動物醫院
              space(h: 3),
              const Text('北部動物醫院'),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: nameArr
                            .map((e) => itemCel(e, w: 100, h: 80))
                            .toList(),
                      ),
                    ]),
              ),
              // 中部動物醫院
              space(h: 3),
              const Text('中部動物醫院'),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      empty.map((e) => itemCel(e, w: 100, h: 80)).toList(),
                ),
              ),
              // 南部動物醫院
              space(h: 3),
              const Text('南部動物醫院'),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      empty.map((e) => itemCel(e, w: 100, h: 80)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
