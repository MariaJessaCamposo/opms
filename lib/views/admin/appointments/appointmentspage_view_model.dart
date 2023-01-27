import 'package:flutter/material.dart';
import 'package:opms/views/admin/appointments/appointment_model.dart';

class AppointmentsPageViewModel extends ChangeNotifier{
  //TextEditingController appointmentController = TextEditingController();
  List<String> categories = [
    "All",
    "Completed",
    "Request",
    "Cancelled"
  ];

  String selectedCategory = "All";
  List<AppointmentModel> appointmentList = [];
  DateTime selectedDate = DateTime.now();

  void onCategorySelected(String category) {
    selectedCategory = category;
    notifyListeners();
  }

  Future<void> getAppointmentByDate(DateTime? dateTime) async {
    // setBusy(true);
    // setFilter('ALL');
    // selectedDate = dateTime ?? DateTime.now();
    // tempList = await apiService.getAppointmentAccordingToDate(date: dateTime);
    // appointmentList.clear();
    // appointmentList.addAll(tempList);
    // notifyListeners();
    // setBusy(false);
  }

  void listenToAppointmentChanges() async {
    // apiService.listenToAppointmentChanges().listen((event) {
    //   appointmentSub =
    //       apiService.listenToAppointmentChanges().listen((event) async {
    //         await getAppointmentByDate(selectedDate);
    //       });
    // }
    // );
  }
}