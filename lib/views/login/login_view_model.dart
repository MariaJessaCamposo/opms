import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  bool isObscure = true;

  void changeObscure() {
    isObscure = isObscure == false ? true : false;
    notifyListeners();
  }
}
