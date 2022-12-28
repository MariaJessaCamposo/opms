import 'package:flutter/material.dart';

class AppointmentsPageViewModel extends ChangeNotifier{
  //TextEditingController appointmentController = TextEditingController();
  List<String> categories = [
    "All",
    "Completed",
    "Request",
    "Cancelled"
  ];

  String selectedCategory = "All";

  void onCategorySelected(String category) {
    selectedCategory = category;
    notifyListeners();
  }
}