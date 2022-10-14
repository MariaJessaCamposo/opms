import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  bool isObscure = true;

  void changeObscure() {
    isObscure = isObscure == false ? true : false;
    notifyListeners();
  }
}
