import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:opms/models/users_model.dart';

class RegisterViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController(),
      dateController = TextEditingController(),
      fnameController = TextEditingController(),
      mnameController = TextEditingController(),
      lnameController = TextEditingController(),
      genderController = TextEditingController(),
      positionController = TextEditingController();

  var gender = ['Male', 'Female'];
  var position = ["Doctor", "Staff", "Client"];

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

  Future createUser({required String date_reg, fname, birthday, gender, address, contact, required int age } ) async {
    //Reference to document
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    final user = User(
        id: docUser.id,
        date_reg: date_reg,
        fname: fname,
        // mname: mname,
        // lname: lname,
        birthday: birthday,
        gender: gender,
        age: age,
        address: address,
        contact: contact
    );
    final json = user.toJson();
    //Create document and write to firebase
    await docUser.set(json);
    // print(json);
  }
}
