import 'package:flutter/material.dart';
import 'package:package_name/screen/home_screen.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/tools.dart';
import 'package:package_name/utils/ui_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String account = "111";
  String password = "222";

  doRegistration() {}

  doForgot() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      width: screenW,
      height: screenH,
      decoration: const BoxDecoration(color: white),
      child: ListView(children: [
        space(h: 100),
        // img("logo.png"),
        text(
          '請輸入帳號',
        ),
        input((v) {
          account = v;
        }),
        space(h: 30, w: 20),
        text(
          '請輸入密碼',
        ),
        input((v) {
          password = v;
        }),
        space(h: 30, w: 20),
        button('登入', () {
          // API 寫法
          // () async {
          //   var rtn = await getTVList();
          //   debugPrint((rtn.res?.tv?.length ?? 0).toString());

          // print("Account:" + account + "," + password);
          if (account == "111" && password == "222") {
            // show("登入成功");
            goto(context, const HomeScreen(), isReplaced: true);
          } else {
            //show Error
            // show("帳密有誤", isError: true);
          }
        }),
        space(h: 100, w: 50),
        row([
          gesture(text('註冊'), click: () => doRegistration()),
          gesture(text('忘記密碼'), click: () => doForgot())
        ], maa: Maa.spaceEvenly)
      ]),
    ));
  }
}
