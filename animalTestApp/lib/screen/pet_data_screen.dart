import 'package:flutter/material.dart';

class PetDataScreen extends StatefulWidget {
  const PetDataScreen({super.key});

  @override
  State<PetDataScreen> createState() => _PetDataScreenState();
}

class _PetDataScreenState extends State<PetDataScreen> {
  final List<String> demoData = [
    "add",
    "add",
    "add",
    "add",
    "add",
    "add",
    "add",
    "add",
    "add",
  ];
  final List<String> demoData2 = [
    "add",
    "add",
    "add",
  ];
  final List<String> demoData3 = ["add"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SafeArea(
            child: Column(
          children: [
            Flexible(
                child: HospitalArea(
              demoData: demoData2,
              hospitalArea: "北部",
            )),
            Flexible(
                child: HospitalArea(
              demoData: demoData3,
              hospitalArea: "中部",
            )),
            Flexible(
                child: HospitalArea(
              demoData: demoData,
              hospitalArea: "南部",
              showDart: true,
            )),
          ],
        )),
      ),
    );
  }
}

class HospitalArea extends StatelessWidget {
  const HospitalArea({
    super.key,
    required this.demoData,
    required this.hospitalArea,
    this.showDart = false,
  });
  final String hospitalArea;
  final List<String> demoData;
  final bool showDart;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              hospitalArea,
              style: TextStyle(color: showDart ? Colors.red : Colors.black),
            )
          ],
        ),
        Expanded(
            child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: demoData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => print(index),
                    child: Column(
                      children: [
                        Container(
                          width: 117,
                          height: 117,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${demoData[index]}.png')),
                          ),
                        ),
                        Text(demoData[index]),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
