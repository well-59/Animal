import 'package:flutter/material.dart';
import 'package:package_name/screen/login2_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      goto(
          context,
          const MyHomePage(
            title: 'aaa',
          ),
          isReplaced: true);
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
              children: const [
                // const CircularProgressIndicator(),
                Image(image: AssetImage('assets/images/catPage.jpeg')),
                // space(),
                Text(
                  "Loading",
                  style: TextStyle(fontSize: 24, color: Colors.green),
                )
              ],
            )));
  }
}
