import 'package:flutter/material.dart';

class AddPatientViewModel extends ChangeNotifier {
  TextEditingController dateController = TextEditingController(),
      fnameController = TextEditingController(),
      mnameController = TextEditingController(),
      lnameController = TextEditingController(),
      genderController = TextEditingController(),
      ageController = TextEditingController(),
      addressController = TextEditingController(),
      contactController = TextEditingController();

  var gender = ['Male', 'Female'];
  // var position = ["Doctor", "Staff", "Client"];

}
