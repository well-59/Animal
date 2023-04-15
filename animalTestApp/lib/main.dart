import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:package_name/screen/3.homePage/home_screen.dart';
import 'package:package_name/screen/2.loginPage/login/login_screen.dart';
import 'package:package_name/screen/1.splashPage/splash_screen.dart';

void main() {
  runApp(const AnimalApp());
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal',
      home: const SplashScreen(),
      builder: EasyLoading.init(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginScreen(),
        '/home': (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
