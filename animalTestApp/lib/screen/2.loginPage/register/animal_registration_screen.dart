import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:package_name/services/auth_services.dart';
import 'package:package_name/services/registerVerification.dart';
import 'package:package_name/utils/class/_statefulWidget.dart';
import 'package:package_name/utils/class/_statelessWidget.dart';
import 'package:package_name/utils/enum/register_Enum.dart';
import 'package:package_name/utils/ui_utils.dart';

class AnimalRegistrationScreen extends StatefulWidget {
  const AnimalRegistrationScreen({super.key});

  @override
  State<AnimalRegistrationScreen> createState() =>
      _AnimalRegistrationScreenState();
}

class _AnimalRegistrationScreenState extends State<AnimalRegistrationScreen> {
  String email = "";
  String password = "";
  String checkPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("註冊", style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            well_textfield(
                label: "電子郵件",
                onChange: (v) {
                  email = v;
                  setState(() {});
                }),
            const SizedBox(
              height: 10,
            ),
            !validatorEmpty(email)
                ? text("電子郵件不為空值", color: Colors.red)
                : const SizedBox(),
            !isEmail(email)
                ? text("電子郵件格式不符", color: Colors.red)
                : const SizedBox(),

            // ValidateVerification('email', email),
            Well_PassField(
                label: "密碼",
                onChange: (v) {
                  password = v;
                  setState(() {});
                }),
            !validatorEmpty(password)
                ? text("密碼不得為空值", color: Colors.red)
                : const SizedBox(),
            Well_PassField(
                label: "再次輸入密碼",
                onChange: (v) async {
                  checkPassword = v;
                  setState(() {});
                }),
            !validatorLength(password)
                ? text("密碼長度應介於8～20字元", color: Colors.red)
                : const SizedBox(),
            !validatorContain(password, 1)
                ? text("密碼長度應包含一個大寫英文", color: Colors.red)
                : const SizedBox(),
            !validatorContain(password, 2)
                ? text("密碼長度應包含一個小寫英文", color: Colors.red)
                : const SizedBox(),
            !validatorContain(password, 3)
                ? text("密碼長度應包含一個數字", color: Colors.red)
                : const SizedBox(),
            password != checkPassword
                ? text("兩次的密碼不一致", color: Colors.red)
                : const SizedBox(),
            const SizedBox(
              height: 10,
            ),
            ValidateVerification(RegisterEnum.password, password),
            // ValidateVerification('checkPassword', checkPassword,
            // password: password, password1: checkPassword),
            const SizedBox(
              height: 40,
            ),
            PurpleButton(
              // buttonColor: Colors.red,
              text: "註冊",
              onChanged: () async {
                if (password == checkPassword) {
                  var rtn = await AuthServices().doRegister(email, password);
                  if (rtn != null) {
                    //註冊成功
                    EasyLoading.showToast('註冊成功');
                    if (!mounted) return;
                    Navigator.of(context).pop(true);
                  } else {
                    //註冊失敗
                    EasyLoading.showToast('註冊失敗');
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
