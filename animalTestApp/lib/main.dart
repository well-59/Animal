import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:package_name/screen/home_screen.dart';
import 'package:package_name/screen/login_screen.dart';
import 'package:package_name/screen/splash_screen.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF619393),
                  shape: BoxShape.circle,
                ),
                width: 355,
                height: 264,
                child: const Align(
                  alignment: Alignment.topLeft,
                ),
              )
            ]),
            // const SizedBox(
            //   height: 46,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 0.0, top: 70.0),
                  // alignment: const Alignment(0, 0),
                  width: 260,
                  height: 45,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(width: 1.0, color: Colors.black),
                  ),
                  child: TextField(
                    keyboardType: Platform.isIOS
                        ? const TextInputType.numberWithOptions(
                            signed: true, decimal: true)
                        : TextInputType.number,
                    // alignment: const Alignment(0, 0),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Account',
                        // helperText: '信箱/手機號碼',
                        // hintText: '信箱/手機號碼',
                        labelStyle: TextStyle(inherit: true, height: 10.0),
                        border: InputBorder.none),
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15.0,
                      // color: Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 200,
                //   height: 45,
                //   child: TextField(),
                // )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
                  // alignment: const Alignment(0, 0),
                  width: 260,
                  height: 45,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(width: 1.0, color: Colors.black),
                  ),
                  child: TextField(
                    keyboardType: Platform.isIOS
                        ? const TextInputType.numberWithOptions(
                            signed: true, decimal: true)
                        : TextInputType.number,
                    // alignment: const Alignment(0, 0),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      labelText: 'Password',
                      // helperText: '8 - 10 碼中英文數字',
                      // hintText: '信箱/手機號碼',
                      labelStyle: TextStyle(inherit: true, height: 10.0),
                    ),
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15.0,
                      // color: Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 200,
                //   height: 45,
                //   child: TextField(),
                // )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  // decoration: BoxDecoration(
                  //   // color: Colors.black,
                  //   borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  //   border: Border.all(width: 1.0, color: Colors.black),
                  // ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFD4D816), // Background color
                  ),
                  onPressed: () {
                    log("click", name: "INFO");
                  },
                  child: const Text("sing in"),
                ),
              )
              // TextButton(
              //   style: ElevatedButton.styleFrom(
              //     elevation: 20,
              //   ),
              //   onPressed: () {
              //     log("click", name: "INFO");
              //   },
              //   child: const Text("註冊"),

              // )

              // IconButton(
              //   iconSize: 50,
              //   color: Colors.amber,
              //   // 水波和觸發顏色為透明
              //   highlightColor: Colors.transparent,
              //   splashColor: Colors.transparent,
              //   icon: const Icon(Icons.no_accounts),
              //   onPressed: () {
              //     log("click", name: "註冊");
              //   },
              // )
            ]),
          ]),
    );

    // MediaQuery.of(context).size.width;
    // MediaQuery.of(context).size.height;

    // Future.delayed(const Duration(seconds: 3), () {
    //   goto(context, const LoginScreen());
    // });

    // return const Scaffold(

    //     body: SizedBox(
    //         child: Center(
    //   child: CircularProgressIndicator(color: Colors.blue),
    // )));
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '1',
//               // '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
