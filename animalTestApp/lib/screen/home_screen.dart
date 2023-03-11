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
      bottomNavigationBar: TabBar(
        // indicatorColor: darkgreen,
        controller: tabC,
        tabs: [
          sizedBox(tabC.index, 0, "man.png", "首頁", "首頁"),
          sizedBox(tabC.index, 1, "paw.png", "寵物資料", "寵物資料"),
          sizedBox(tabC.index, 2, "pet-house.png", "動物醫院", "動物醫院"),
          sizedBox(tabC.index, 3, "more.png", "更多", "更多"),
        ],
        // indicatorColor: darkgreen,
        indicator: const BoxDecoration(
          color: green,
          // borderRadius: BorderRadius.circular(20.0),
          // border: Border.all(width: 3.0, color: darkgreen)
        ),
        indicatorWeight: 80.0,
      ),
      body: TabBarView(
        controller: tabC,
        children: const [
          MainScreen(),
          PetDataScreen(),
          MemberScreen(),
          MoreScreen()
        ],
      ),
    );
  }
}
