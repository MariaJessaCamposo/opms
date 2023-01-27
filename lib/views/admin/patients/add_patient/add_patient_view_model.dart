import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/models/users_model.dart';

class AddPatientViewModel extends ChangeNotifier {
  TextEditingController dateController = TextEditingController(),
      dateregController = TextEditingController(),
      fullnameController = TextEditingController(),
      mnameController = TextEditingController(),
      lnameController = TextEditingController(),
      genderController = TextEditingController(),
      ageController = TextEditingController(),
      addressController = TextEditingController(),
      contactController = TextEditingController();

  var gender = ['Male', 'Female'];

  // var position = ["Doctor", "Staff", "Client"];

  Future createUser({required String date_reg, fname, birthday, gender, address, contact, required int age } ) async {
    //Reference to document
    final docUser = FirebaseFirestore.instance.collection('patients').doc();

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


