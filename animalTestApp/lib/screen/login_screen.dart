import 'package:flutter/material.dart';
import 'package:package_name/screen/homePage/home_screen.dart';
import 'package:package_name/utils/class/statelessWidget.dart';
import 'package:package_name/utils/constant.dart';
import 'package:package_name/utils/enum/enum.dart';
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
        const Space16(
          height: 100,
        ),
        const TextUnderline('請輸入帳號'),
        input((v) {
          account = v;
        }),
        const Space16(
          height: 30,
        ),
        const TextUnderline('請輸入密碼'),
        input((v) {
          password = v;
        }),
        const Space16(
          height: 30,
        ),
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
        const Space16(
          height: 100,
        ),
        row([
          gesture(const TextUnderline('註冊'), click: () => doRegistration()),
          gesture(const TextUnderline('忘記密碼'), click: () => doForgot())
        ], maa: Maa.spaceEvenly)
      ]),
    ));
  }
}
