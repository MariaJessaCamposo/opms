import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeTextFormField extends StatefulWidget {
  @override
  _TimeTextFormFieldState createState() => _TimeTextFormFieldState();
}

class _TimeTextFormFieldState extends State<TimeTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _selectTime() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      _controller.text = "${selectedTime.hour}:${selectedTime.minute}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: "Select Time",
        suffixIcon: IconButton(
          icon: Icon(Icons.timer),
          onPressed: _selectTime,
        ),
      ),
    );
  }
}






//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:opms/constants/styles/palette_color.dart';
// import 'package:opms/constants/styles/text_styles.dart';
// import 'package:opms/views/widget/selection_time/selection_time_view_model.dart';
// import 'package:stacked/stacked.dart';
//
// class SelectionTime extends StatelessWidget {
//   final String? title;
//   final DateTime? initialDateTime;
//   final DateTime? minimumDateTime;
//
//   const SelectionTime(
//       {Key? key, this.title, this.initialDateTime, this.minimumDateTime})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<SelectionTimeViewModel>.reactive(
//       viewModelBuilder: () => SelectionTimeViewModel(),
//       builder: (context, model, child) => Container(
//         height: 280,
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   border:
//                       Border(bottom: BorderSide(color: Palettes.kcHintColor))),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton(
//                     onPressed: Get.back,
//                     child: Text(
//                       'Cancel',
//                       style: TextStyles.tsButton1(color: Colors.red[700]),
//                     ),
//                   ),
//                   Text(
//                     title ?? '',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   TextButton(
//                     onPressed: () =>
//                         model.setReturnDateTime(initialDate: initialDateTime),
//                     child: Text(
//                       'Done',
//                       style: TextStyles.tsButton1(color: Palettes.kcBlueMain1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//                 child: CupertinoDatePicker(
//                     mode: CupertinoDatePickerMode.time,
//                     initialDateTime: initialDateTime ?? model.defaultStartTime,
//                     minimumDate: minimumDateTime,
//                     onDateTimeChanged: (DateTime dateTime) {
//                       model.setSelectedTime(dateTime);
//                     }))
//           ],
//         ),
//       ),
//     );
//   }
// }
