import 'package:flutter/material.dart';
import 'package:package_name/utils/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(

    // width: 100,
    // color: white,
    // height: 100,
    // padding: const EdgeInsets.all(10),
    // child: CircleAvatar(
    //   child: text("1"),        )

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // 第一層：圓形大頭照
            Positioned(
              top: 100,
              left: 20,
              child: Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/hippopotamus.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 170,
              left: 20,
              right: 0,
              child: Text('小朋友們'),
            ),
            // 第二層：可滾動的人物列表
            Positioned(
              top: 180,
              left: 20,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Column(
                      children: [
                        Container(
                          width: 117,
                          height: 117,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/images/$index.png')),
                          ),
                        ),
                        Text("$index"),
                      ],
                    ),
                    // Container(
                    //   width: 117,
                    //   height: 117,
                    //   margin: const EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     // color: Colors.red,
                    //     image: DecorationImage(
                    //         image: AssetImage('assets/images/$index.png')),
                    //   ),
                    //   // child: Center(
                    //   //   child: Text(
                    //   //     'Person $index',
                    //   //     style: const TextStyle(color: Colors.white),
                    //   //   ),
                    //   // ),
                    // ),
                  ),
                ),
              ),
            ),
            // 第三層：行事曆
            Positioned(
              top: 350,
              left: 20,
              child: Container(
                width: 365,
                height: 180,
                decoration: BoxDecoration(
                  color: green,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [Text('行事曆')],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 54,
                          height: 54,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/QQ.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 10),
                            Text('提醒您'),
                            SizedBox(height: 10),
                            Text('Moro Sir'),
                            SizedBox(height: 10),
                            Text('8月23日(二)   下午2:30  有約回診喔!'),
                            SizedBox(height: 10),
                            Text('地址：台北市中正區忠孝東路一段1號'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 第四層：寵物醫療週刊
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
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
                      children: const [
                        Text('寵物醫療週刊'),
                        Text('更多'),
                      ],
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 15.0,
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          '電影《只要一分鐘》的女主角琬真在時尚雜誌擔任編輯，領養一隻黃金獵犬里拉，隨著事業起飛，忙碌佔據了生活，疏忽里拉的照顧，就在角逐總編輯的職位，里拉卻罹患癌症，在工作與寵物之間掙扎，她毅然辭掉工作，回家全心照顧里拉，陪牠走完生命的最後。「寵物是家人，就從居家健康照護開始」，毛爸毛媽都有這樣的心境，把寵物當作自己的兒女，捧在懷裡細心呵護，一旦寵物生病或走失，焦急得像熱鍋上的螞蟻。',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          // softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
