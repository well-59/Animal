// ignore_for_file: file_names, must_be_immutable
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:package_name/utils/enum/register_Enum.dart';

class ValidateVerification extends StatelessWidget {
  final RegisterEnum nameType;
  final String nameValue;
  final int passwordMin;
  final int passwordMax;
  final String password;
  final String password1;
  late Text v;
  final String s;

  ValidateVerification(this.nameType, this.nameValue,
      {this.passwordMin = 8,
      this.passwordMax = 20,
      this.password = "",
      this.password1 = "",
      this.s = '',
      super.key});

  @override
  Widget build(BuildContext context) {
    int? hasValue;
    if (nameType == RegisterEnum.email && nameValue.isEmpty == false) {
      hasValue = 0;
    } else if (nameType == RegisterEnum.email &&
        EmailValidator.validate(nameValue)) {
      hasValue = 1;
      debugPrint(hasValue.toString());
    } else if (nameType == RegisterEnum.password && nameValue.isEmpty) {
      hasValue = 2;
    } else if ((nameType == RegisterEnum.password &&
            nameValue.length >= passwordMin &&
            nameValue.length <= passwordMax) ==
        false) {
      hasValue = 3;
    } else if ((nameType == RegisterEnum.password &&
            RegExp('.*[A-Z].*').hasMatch(nameValue)) ==
        false) {
      hasValue = 5;
    } else if ((nameType == RegisterEnum.password &&
            RegExp('.*[a-z].*').hasMatch(nameValue)) ==
        false) {
      hasValue = 4;
    } else if ((nameType == RegisterEnum.password &&
            RegExp('.*[0-9].*').hasMatch(nameValue)) ==
        false) {
      hasValue = 6;
    } else if (nameType == RegisterEnum.checkPassword &&
        password != password1) {
      hasValue = 7;
    } else {
      hasValue = null;
    }

    switch (hasValue) {
      case 0:
        v = const Text("電子郵件不為空值",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 1:
        v = const Text("電子郵件格式不符",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 2:
        v = const Text("密碼不成為空值",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 3:
        v = const Text("密碼長度應介於8～20字元",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 4:
        v = const Text("密碼長度應包含一個大寫英文",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 5:
        v = const Text("密碼長度應包含一個小寫英文",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 6:
        v = const Text("密碼長度應包含一個數字",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
      case 7:
        v = const Text("密碼不一致",
            style: TextStyle(color: Colors.red, fontSize: 13.0));
        break;
    }
    // ignore: unnecessary_null_comparison
    if (hasValue == null) {
      return const SizedBox();
    } else {
      return v;
    }
  }
}
