import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  bool isObscure = true;
  bool isObscureConfirm = true;

  void changeObscure() {
    isObscure = isObscure == false ? true : false;
    notifyListeners();
  }
  void changeObscureConfirm() {
    isObscureConfirm = isObscureConfirm == false ? true : false;
    notifyListeners();
  }
}
