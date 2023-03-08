import 'package:flutter/material.dart';
import 'package:package_name/screen/login_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';
import 'package:package_name/utils/ui_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      goto(context, const LoginScreen(), isReplaced: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    screenW = MediaQuery.of(context).size.width;
    screenH = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SizedBox(
            width: screenW,
            height: screenH,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                space(),
                const Text(
                  "Loading",
                  style: TextStyle(fontSize: 24, color: Colors.green),
                )
              ],
            )));
  }
}
