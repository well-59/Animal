// import 'package:flutter/material.dart';
// import 'package:package_name/utils/constant.dart';
// import 'package:package_name/utils/ui_utils.dart';

// class PetDataScreen extends StatefulWidget {
//   const PetDataScreen({super.key});

//   @override
//   State<PetDataScreen> createState() => _PetDataScreenState();
// }

// class _PetDataScreenState extends State<PetDataScreen> {
//   List<String> nameArr = [
//     "Oasis",
//     "梁動物",
//     "PrinceHospital",
//   ];
//   List<String> empty = [
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//     "add",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // 北部動物醫院
//                   space(h: 3),
//                   const Text('北部動物醫院'),
//                   Container(
//                     margin: const EdgeInsets.only(left: 10, right: 10),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Wrap(
//                             children: nameArr
//                                 .map((e) => itemCel(e, w: 100, h: 80))
//                                 .toList(),
//                           ),
//                         ]),
//                   ),
//                   // 中部動物醫院
//                   space(h: 3),
//                   const Text('中部動物醫院'),
//                   Container(
//                     width: screenW,
//                     height: screenH,
//                     child: Expanded(
//                         child: GridView.builder(
//                             physics: const NeverScrollableScrollPhysics(),
//                             shrinkWrap: true,
//                             itemCount: empty.length,
//                             gridDelegate:
//                                 SliverGridDelegateWithFixedCrossAxisCount(
//                                     mainAxisSpacing: 8, crossAxisCount: 3),
//                             itemBuilder: (context, index) {
// return GestureDetector(
//   onTap: () => print(index),
//   child: Column(
//     children: [
//       Container(
//         width: 117,
//         height: 117,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           image: DecorationImage(
//               image: AssetImage(
//                   'assets/images/${empty[index]}.png')),
//         ),
//       ),
//       Text(empty[index]),
//     ],
//   ),
// );
//                             })),
//                   ),

//                   // ListView.builder(
//                   //     shrinkWrap: true,
//                   //     itemCount: empty.length,
//                   //     itemBuilder: (context, index) {
//                   //   return Column(
//                   //     children: [
//                   //       Container(
//                   //         width: 117,
//                   //         height: 117,
//                   //         margin: const EdgeInsets.all(10),
//                   //         decoration: BoxDecoration(
//                   //           shape: BoxShape.circle,
//                   //           image: DecorationImage(
//                   //               image: AssetImage(
//                   //                   'assets/images/${empty[index]}.png')),
//                   //         ),
//                   //       ),
//                   //       GestureDetector(
//                   //           onTap: () => print(index),
//                   //           child: Text(empty[index])),
//                   //     ],
//                   //   );
//                   // })),
//                   // Container(
//                   //   margin: const EdgeInsets.only(left: 10, right: 10),
//                   //   child: Column(
//                   //     crossAxisAlignment: CrossAxisAlignment.start,
//                   //     children:
//                   //         empty.map((e) => itemCel(e, w: 100, h: 80)).toList(),
//                   //   ),
//                   // ),
//                   // 南部動物醫院
//                   space(h: 3),
//                   const Text('南部動物醫院'),
//                   Container(
//                     margin: const EdgeInsets.only(left: 10, right: 10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children:
//                           empty.map((e) => itemCel(e, w: 100, h: 80)).toList(),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
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
