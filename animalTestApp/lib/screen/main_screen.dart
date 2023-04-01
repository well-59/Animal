import 'package:flutter/material.dart';
import 'package:package_name/screen/animal_info_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';
import 'package:package_name/utils/ui_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> nameArr = [
    "littleDinosaur",
    "littleDinosaur",
    "bear",
    "GunnaBear",
    "jojo不滅鑽石",
    "kid",
    "luffy",
    "titanColossal",
    "will",
    "cat",
    "prince",
    "kid",
    "king",
    "cat",
    "king",
    "cat",
    "king"
  ];

  String titleString = '小朋友們';
  String imageString = 'hippopotamus';
  String image2String = 'QQ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            // 第一層：圓形大頭照
            row([
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/$imageString.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    goto(
                      context,
                      AnimalInformationScreen(
                        imageString: imageString,
                        titleString: titleString,
                        demoData: {"demo1": "我帶的資料"},
                      ),
                    );
                  },
                  child: null,
                ),
              ),
            ], maa: Maa.start),
            Text(titleString),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: nameArr.map((e) => itemCel(e)).toList()),
            ),
            Container(
              width: screenW,
              height: 180,
              decoration: BoxDecoration(
                color: green,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('行事曆'),
                        Row(
                          children: [
                            Container(
                              width: 17,
                              height: 17,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('更多')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/$image2String.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text('提醒您'),
                          const SizedBox(height: 10),
                          const Text('Moro Sir'),
                          const SizedBox(height: 10),
                          const Text('8月23日(二)   下午2:30  有約回診喔!'),
                          const SizedBox(height: 10),
                          RichText(
                            text: const TextSpan(
                              text: "地址：台北市中正區忠孝東路一段1號",
                              style: TextStyle(color: Colors.blue),
                              // children: [
                              //   TextSpan(
                              //       text: "生活",
                              //       style: TextStyle(
                              //           color: data["life"]
                              //               ? Colors.red
                              //               : Colors.black))
                              // ]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            space(),
            Container(
              // color:
              width: 365,
              height: 180,
              decoration: BoxDecoration(
                color: green,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          space(w: 5),
                          const Text('寵物醫療週刊'),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 17,
                            height: 17,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text('更多'),
                        ],
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 15.0,
                    children: [
                      space(w: 10),
                      const SizedBox(height: 10),
                      const Text(
                        '電影《只要一分鐘》的女主角琬真在時尚雜誌擔任編輯，領養一隻黃金獵犬里拉，隨著事業起飛，忙碌佔據了生活，疏忽里拉的照顧，就在角逐總編輯的職位，里拉卻罹患癌症，在工作與寵物之間掙扎，她毅然辭掉工作，回家全心照顧里拉，陪牠走完生命的最後。「寵物是家人，就從居家健康照護開始」，毛爸毛媽都有這樣的心境，把寵物當作自己的兒女，捧在懷裡細心呵護，一旦寵物生病或走失，焦急得像熱鍋上的螞蟻。',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
