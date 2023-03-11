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
      bottomNavigationBar: TabBar(
        controller: tabC,
        tabs: [
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     img("imgName", w: 20, h: 20),
          //     const CircularProgressIndicator(),
          //     space(),
          //     text(tabC.index == 0 ? "首頁" : "X")
          //   ],
          // ),
          text(tabC.index == 0 ? "寵物資料" : "X"),
          text(tabC.index == 1 ? "寵物資料" : "X"),
          text(tabC.index == 2 ? "動物醫院" : "X"),
          text(tabC.index == 3 ? "更多" : "X"),
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
