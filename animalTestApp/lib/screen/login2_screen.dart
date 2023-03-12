import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:package_name/screen/home_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';
import 'package:package_name/utils/ui_utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MyHomePage> {
  String account = "111";
  String password = "222";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/bb.jpeg')),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.all(radius),
                color: Color(0xFF619393),
              ),
              width: 355,
              height: 364,
              // child: const Align(
              //   alignment: Alignment.topLeft,
              // ),
            ),
          ],
        ),
        const SizedBox(
          height: 30, //
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [textbutton(260, 45, 'Account', Icons.person, black)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [textbutton(260, 45, 'Password', Icons.key, black)],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 260,
            height: 45,
            child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(212, 216, 22, 1))),
              onPressed: () {
                if (account == "111" && password == "222") {
                  // show("登入成功");
                  goto(context, const HomeScreen(), isReplaced: true);
                }
                log("click", name: "INFO");
              },
              child: const Text(
                "sing in",
                style: TextStyle(color: black),
              ),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20.0),
            width: 260,
            height: 45,
            child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(212, 216, 22, 1))),
              onPressed: () {
                log("click", name: "INFO");
              },
              child: const Text(
                "register",
                style: TextStyle(color: black),
              ),
            ),
          )
        ]),
        Row(
          children: const <Widget>[
            Expanded(
              child: Text('- OR -', textAlign: TextAlign.center),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20.0),
            width: 260,
            height: 45,
            child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(212, 216, 22, 1))),
              onPressed: () {
                log("click", name: "INFO");
              },
              child: const Text(
                "sign with Google",
                style: TextStyle(color: black),
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
