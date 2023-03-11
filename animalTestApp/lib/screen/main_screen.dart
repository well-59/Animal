import 'package:flutter/material.dart';
import 'package:package_name/utils/ui_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            child: text("1"),
          )),
    );
  }
}
