import 'package:flutter/material.dart';
import 'package:package_name/screen/main_screen.dart';
import 'package:package_name/screen/member_screen.dart';
import 'package:package_name/screen/more_screen.dart';
import 'package:package_name/screen/pet_data_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/ui_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabC;
  @override
  void initState() {
    super.initState();
    tabC = TabController(length: 4, vsync: this);
    tabC.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkgreen,
      //   bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: darkgreen,
      //     selectedItemColor: green, //選中時的顏色
      //     unselectedItemColor: darkgreen, //未選中的顏色
      //     iconSize: 24.0,
      //     items: [
      //       bottomNavigationBar("man.png", "首頁"),
      //       bottomNavigationBar("paw.png", "寵物資料"),
      //       bottomNavigationBar("pet-house.png", "動物醫院"),
      //       bottomNavigationBar("more.png", "更多")
      //     ],
      //   ),
      bottomNavigationBar: TabBar(
        controller: tabC,
        tabs: [
          tabBar(tabC.index, 0, "user.png", "首頁", "首頁"),
          tabBar(tabC.index, 1, "paw.png", "寵物資料", "寵物資料"),
          tabBar(tabC.index, 2, "pet-house.png", "動物醫院", "動物醫院"),
          tabBar(tabC.index, 3, "more.png", "更多", "更多"),
        ],
        indicator: const BoxDecoration(
          color: green,
          // borderRadius: BorderRadius.circular(20.0),
          // border: Border.all(width: 3.0, color: darkgreen)
        ),
        indicatorWeight: 40.0,
      ),
      body: TabBarView(
        controller: tabC,
        children: const [
          MainScreen(),
          MemberScreen(),
          PetDataScreen(),
          MoreScreen()
        ],
      ),
    );
  }
}
