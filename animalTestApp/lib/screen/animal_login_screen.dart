import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:package_name/screen/homePage/home_screen.dart';
import 'package:package_name/utils/class/statelessWidget.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';

class AnimalLoginScreen extends StatefulWidget {
  const AnimalLoginScreen({super.key, required this.title});
  final String title;
  @override
  State<AnimalLoginScreen> createState() => _AnimalLoginScreen();
}

class _AnimalLoginScreen extends State<AnimalLoginScreen> {
  String account = '111';
  String password = '222';
  String imageString = 'bb';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/$imageString.jpeg')),
                      shape: BoxShape.circle,
                    ),
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginInputButton(
                  labeltext: 'Account',
                  icons: Icons.person,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginInputButton(
                  labeltext: 'Password',
                  icons: Icons.key,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15,
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 15,
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
            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //   Container(
            //     margin: const EdgeInsets.only(top: 10, bottom: 20.0),
            //     width: MediaQuery.of(context).size.width / 1.5,
            //     height: MediaQuery.of(context).size.height / 15,
            //     child: OutlinedButton(
            //       style: ButtonStyle(
            //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30.0))),
            //           backgroundColor: MaterialStateProperty.all(
            //               const Color.fromRGBO(212, 216, 22, 1))),
            //       onPressed: () {
            //         log("click", name: "INFO");
            //       },
            //       child: const Text(
            //         "register",
            //         style: TextStyle(color: black),
            //       ),
            //     ),
            //   )
            // ]),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text('- OR -', textAlign: TextAlign.center),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/google.png')),
                          // shape: BoxShape.circle,
                        ),
                        width: MediaQuery.of(context).size.width / 4.5,
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/apple.png')),
                          // shape: BoxShape.circle,
                        ),
                        width: MediaQuery.of(context).size.width / 4.5,
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //   Container(
            //     margin: const EdgeInsets.only(top: 10, bottom: 20.0),
            //     width: MediaQuery.of(context).size.width / 1.5,
            //     height: MediaQuery.of(context).size.height / 15,
            //     child: OutlinedButton(
            //       style: ButtonStyle(
            //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30.0))),
            //           backgroundColor: MaterialStateProperty.all(
            //               const Color.fromRGBO(212, 216, 22, 1))),
            //       onPressed: () {
            //         log("click", name: "INFO");
            //       },
            //       child: const Text(
            //         "sign with Google",
            //         style: TextStyle(color: black),
            //       ),
            //     ),
            //   )
            // ]),
          ]),
        ),
      ),
    );
  }
}
