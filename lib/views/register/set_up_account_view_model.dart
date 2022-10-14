import 'package:flutter/material.dart';

class SetUpAccountViewModel extends ChangeNotifier {
  TextEditingController dateController = TextEditingController(),
      fnameController = TextEditingController(),
      mnameController = TextEditingController(),
      lnameController = TextEditingController(),
      genderController = TextEditingController(),
      positionController = TextEditingController();

  var gender = ['Male', 'Female'];
  var position = ["Doctor", "Staff", "Client"];
}
