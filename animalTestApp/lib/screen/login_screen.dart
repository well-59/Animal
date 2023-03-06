import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

const Color white = Colors.white;

class _LoginScreenState extends State<LoginScreen> {
  String account = "";
  String password = "";
  double screenW = 0;
  double screenH = 0;

  doRegis() {}

  doForgot() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: appbar(
        //     title: "Work Hero", actions: [const Icon(Icons.message), space()]),
        body: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      width: screenW,
      height: screenH,
      decoration: const BoxDecoration(color: white),
      child: ListView(children: [
        space(h: 100, w: 50),
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
          // print("Account:" + account + "," + password);
          if (account == "111" && password == "222") {
            // show("登入成功");
            goto(context, const HomeScreen());
          } else {
            //show Error
            // show("帳密有誤", isError: true);
          }
        }),
        space(h: 100, w: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            gesture(
              text('註冊'),
              click: () {
                doRegis();
                // toast("尚未開放註冊");
              },
            ),
            gesture(text('忘記密碼'), click: () {
              doForgot();
              // toast('忘記密碼');
            })
          ],
        )
      ]),
    ));
  }
}

Widget space({required double h, required double w}) {
  return SizedBox(
    height: h,
    width: w,
  );
}

Widget text(String txt,
    {double size = 12, bool underline = false, Color color = Colors.black}) {
  return Text(txt,
      style: TextStyle(
          fontSize: size,
          color: color,
          decoration: (underline ? TextDecoration.underline : null)));
}

// Widget show(String txt, {bool isError = false}) {
//   isError ? EasyLoading.showError(txt) : EasyLoading.showSuccess(txt);
// }

Widget input(Function callBack, {TextInputType keyboard = TextInputType.text}) {
  return TextField(
    onChanged: (v) {
      callBack(v);
    },
    keyboardType: keyboard,
  );
}

// toast(String txt) {
//   EasyLoading.showToast(txt);
// }

GestureDetector gesture(Widget child, {required Null Function() click}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    child: child,
    onTap: () {
      click();
    },
  );
}

goto(BuildContext context, Widget screen) {
  return Navigator.push(
      context,
      PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => screen,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero));
}

Widget img(String imgName, {double w = 120, double h = 120}) {
  return Image.asset(
    "assets/images/$imgName",
    width: w,
    height: h,
  );
}

Widget button(String txt, Function fun) {
  return ElevatedButton(
      onPressed: () {
        fun();
      },
      child: Text(txt));
}
