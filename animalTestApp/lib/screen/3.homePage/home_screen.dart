import 'package:flutter/material.dart';
import 'package:package_name/screen/main_screen.dart';
import 'package:package_name/screen/4.petPage/member_screen.dart';
import 'package:package_name/screen/6.morePage/more_screen.dart';
import 'package:package_name/screen/5.hospitalPage/pet_data_screen.dart';
import 'package:package_name/utils/class/_statelessWidget.dart';
import 'package:package_name/utils/constant.dart';

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
        controller: tabC,
        tabs: [
          TabBarList(tabC.index, 0, "user.png", "首頁", "首頁"),
          TabBarList(tabC.index, 1, "paw.png", "寵物資料", "寵物資料"),
          TabBarList(tabC.index, 2, "pet-house.png", "動物醫院", "動物醫院"),
          TabBarList(tabC.index, 3, "more.png", "更多", "更多"),
        ],
        indicator: const BoxDecoration(
          color: green,
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
