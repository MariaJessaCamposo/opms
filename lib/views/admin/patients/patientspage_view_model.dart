import 'package:flutter/material.dart';
import 'package:opms/models/users_model.dart';

class PatientsPageViewModel extends ChangeNotifier{
  TextEditingController searchController = TextEditingController();

  String name = "";

  // void goToPatientInfoView(int index) {
  //   navigationService.pushNamed(Routes.PatientInfoView,
  //       arguments: PatientInfoViewArguments(patient: patientList[index]));
  // }

  // final List<User> users;
  //
  // List<User> foundUser = [];
  //
  // bool hideResultCount = true;
  //
  // bool hasInput = false;
  //
  // PatientsPageViewModel(this.users);
  // final CollectionReference _users =
  // FirebaseFirestore.instance.collection('users');
  //
  //
  // void initialize() {
  //   foundShoes = items;
  //   notifyListeners();
  // }
  //
  // void onTextChanged(String input) {
  //   foundShoes = items
  //       .where((shoe) => shoe.name!.toLowerCase().contains(input.toLowerCase()))
  //       .toList();
  //   hideResultCount = false;
  //   hideResultCount = input.isEmpty ? true : false;
  //   hasInput = input.isEmpty ? false : true;
  //   notifyListeners();
  // }
  //
  // final searchField = TextEditingController();
}