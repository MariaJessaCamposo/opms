import 'package:flutter/material.dart';

class HomepageViewClientModel extends ChangeNotifier {
  bool isHome = true;
  bool isPatient = false;
  bool isAppointment = false;
  bool isProduct = false;
  bool isServices = false;

  void isHomeTrue() {
    isHome = true;
    isPatient = false;
    isAppointment = false;
    isProduct = false;
    isServices = false;
    notifyListeners();
  }

  void isPatientTrue() {
    isHome = false;
    isPatient = true;
    isAppointment = false;
    isProduct = false;
    isServices = false;
    notifyListeners();
  }

  void isAppointmentTrue() {
    isHome = false;
    isPatient = false;
    isAppointment = true;
    isProduct = false;
    isServices = false;
    notifyListeners();
  }

  void isProductTrue() {
    isHome = false;
    isPatient = false;
    isAppointment = false;
    isProduct = true;
    isServices = false;
    notifyListeners();
  }

  void isServicesTrue() {
    isHome = false;
    isPatient = false;
    isAppointment = false;
    isProduct = false;
    isServices = true;
    notifyListeners();
  }

  //IndexedStack
  int stackIndex = 0; //page index

  void changeIndex(int index) {
    stackIndex = index;
    if (stackIndex == 0) {
      isHomeTrue();
    } else if (stackIndex == 1) {
      isPatientTrue();
    } else if (stackIndex == 2) {
      isAppointmentTrue();
    } else if (stackIndex == 3) {
      isProductTrue();
    } else if (stackIndex == 4) {
      isServicesTrue();
    }
    notifyListeners();
  }
}
