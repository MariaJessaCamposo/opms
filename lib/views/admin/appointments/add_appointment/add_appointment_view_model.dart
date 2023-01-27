import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opms/core/bottom_sheet/bottom_sheet_service.dart';
import 'package:opms/views/widget/selection_date/selection_date.dart';
import 'package:opms/views/widget/selection_time/selection_time.dart';

class AddAppointmentViewModel extends ChangeNotifier{
  final dateTxtController = TextEditingController();
  final startTimeTxtController = TextEditingController();
  final endTimeTxtController = TextEditingController();
  final optometristTxtController = TextEditingController();
  final remarksTxtController = TextEditingController();
  final procedureTxtController = TextEditingController();
  final bottomSheetService = BottomSheetService();


  String? tempDate;
  // List<Procedure> selectedProcedures = [];
  DateTime? selectedAppointmentDate;
  DateTime? selectedStartTime;
  DateTime? selectedEndTime;
  DateTime? tempStartTime;
  DateTime? tempEndTime;
  // UserModel? myDentist;
  // AppointmentModel? latestAppointment;


  var optometrist = ['Angel Plaza', 'Doc'];

  // Future _selectTime() async {
  //   TimeOfDay? selectedTime = await showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //   );
  //   if (selectedTime != null) {
  //     _controller.text = DateFormat.jm().format(selectedTime.toDate());
  //   }
  // }





  // void selectDate(TextEditingController controller) async {
  //   selectedAppointmentDate =
  //   await bottomSheetService.openBottomSheet(SelectionDate(
  //     title: 'Set Appointment date',
  //     initialDate: DateTime.now(),
  //     maxDate: DateTime.utc(DateTime.now().year + 5),
  //   ));
  //   tempDate = selectedAppointmentDate != null
  //       ? selectedAppointmentDate.toString()
  //       : tempDate ?? '';
  //   selectedAppointmentDate = tempDate?.toDateTime()?.toDateMonthDayOnly() ??
  //       selectedAppointmentDate?.toDateMonthDayOnly();
  //   if (selectedAppointmentDate != null) {
  //     controller.text = DateFormat.yMMMd().format(selectedAppointmentDate!);
  //   }
  //   notifyListeners();
  // }

  // void selectStartTime(TextEditingController controller) async {
  //   if (selectedAppointmentDate != null) {
  //     // selectedStartTime =
  //
  //     await bottomSheetService.openBottomSheet(SelectionTime(
  //       title: 'Set Start Time',
  //       initialDateTime: DateTime(selectedAppointmentDate!.year,
  //           selectedAppointmentDate!.month, selectedAppointmentDate!.day),
  //     ));
  //
  //     if (selectedStartTime != null) {
  //       if (selectedEndTime != selectedStartTime) {
  //         tempStartTime = selectedStartTime;
  //         controller.text = DateFormat.jm().format(selectedStartTime!);
  //       } else {
  //         // snackBarService.showSnackBar(
  //         //     message: 'Start time cannot be the same with End time',
  //         //     title: 'Warning');
  //         controller.text = '';
  //       }
  //     } else {
  //       selectedStartTime = tempStartTime;
  //       notifyListeners();
  //     }
  //   } else {
  //     // snackBarService.showSnackBar(
  //     //     message: 'Please Set Appointment Date First', title: 'Warning');
  //   }
  // }
  //
  // void selectEndTime(TextEditingController controller) async {
  //   if (selectedStartTime != null) {
  //     selectedEndTime = await bottomSheetService.openBottomSheet(SelectionTime(
  //       title: 'Set End Time',
  //       initialDateTime: selectedStartTime!.add(Duration(minutes: 60)),
  //       minimumDateTime: selectedStartTime!.add(Duration(minutes: 5)),
  //     ));
  //     if (selectedEndTime != null) {
  //       if (selectedStartTime != selectedEndTime) {
  //         tempEndTime = selectedEndTime;
  //         controller.text = DateFormat.jm().format(selectedEndTime!);
  //       } else {
  //         snackBarService.showSnackBar(
  //             message: 'Start time cannot be the same with End time',
  //             title: 'Warning');
  //         controller.text = '';
  //       }
  //     } else {
  //       selectedEndTime = tempEndTime;
  //       notifyListeners();
  //     }
  //   } else {
  //     snackBarService.showSnackBar(
  //         message: 'Please set start time first', title: 'Warning');
  //   }
  // }

}