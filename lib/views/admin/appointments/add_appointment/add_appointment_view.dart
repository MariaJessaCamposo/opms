import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:opms/constants/styles/palette_color.dart';
import 'package:opms/constants/styles/text_border_styles.dart';
import 'package:opms/constants/styles/text_styles.dart';
import 'package:opms/models/patient_model/patient_model.dart';
import 'package:opms/views/admin/appointments/add_appointment/add_appointment_view_model.dart';
import 'package:opms/views/admin/appointments/appointmentspage_view.dart';
import 'package:opms/views/admin/patients/patients_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';


class AddAppointmentView extends StatefulWidget {
  const AddAppointmentView({Key? key}) : super(key: key);
  // final Patient patient;

  @override
  State<AddAppointmentView> createState() => _AddAppointmentViewState();
}

class _AddAppointmentViewState extends State<AddAppointmentView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddAppointmentViewModel>.reactive(
        viewModelBuilder: () => AddAppointmentViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {


          Future _selectStartTime() async {
            TimeOfDay? selectedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),

            );
            if (selectedTime != null) {
              viewModel.startTimeTxtController.text =  selectedTime.format(context);
            }
          }

          Future _selectEndTime() async {
            TimeOfDay? selectedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),

            );
            if (selectedTime != null) {
              viewModel.endTimeTxtController.text =  selectedTime.format(context);
            }
          }
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Schedule',
          style: TextStyles.tsHeading3(color: Colors.white),
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                  // onPressed: viewModel.navigationService.pop,
                  onPressed: (){},
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade700),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(() => AppointmentsPageView());
                  },
                    // onPressed: () {
                    //   if (createAppointmentFormKey.currentState!
                    //       .validate()) {
                    //     if (!(model.selectedProcedures.length <= 0)) {
                    //       model.setAppointment(
                    //         appointment: AppointmentModel(
                    //           patient: widget.patient,
                    //           date: model.selectedAppointmentDate
                    //               .toString(),
                    //           startTime:
                    //           model.selectedStartTime.toString(),
                    //           endTime: model.selectedEndTime.toString(),
                    //           dentist: dentistTxtController.text,
                    //           procedures: model.selectedProcedures,
                    //           appointment_status:
                    //           AppointmentStatus.Pending.name,
                    //         ),
                    //         popTime: widget.popTimes,
                    //         patientId: widget.patient.id,
                    //       );
                    //     } else {
                    //       model.snackBarService.showSnackBar(
                    //           message: 'No Procedures Selected',
                    //           title: 'Warning');
                    //     }
                    //   }
                    // },
                    child: Text('Save'))),
          ],
        )
      ],
      body: Form(
        key: formKey,
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            children: [
              const Divider(),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Patient Info',
                    style: TextStyles.tsHeading3(),
                    textAlign: TextAlign.center,
                  )),
              // PatientCard(
              //   image: widget.patient.image,
              //   name: widget.patient.fullName,
              //   phone: widget.patient.phoneNum,
              //   address: widget.patient.address,
              //   birthDate: DateFormat.yMMMd()
              //       .format(widget.patient.birthDate.toDateTime()),
              //   age: AgeCalculator.age(
              //       widget.patient.birthDate.toDateTime()!,
              //       today: DateTime.now())
              //       .years
              //       .toString(),
              //   dateCreated: widget.patient.dateCreated!,
              // ),
              const Divider(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      onTap: () async {
                        //DateTime? date = DateTime(1900);
                        FocusScope.of(context)
                            .requestFocus(FocusNode());
                        DateTime? date =
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1930),
                          lastDate: DateTime.now(),
                        );

                        if (date != null) {
                          // print(date);
                          String formattedDate =
                          DateFormat('MM/dd/yyyy')
                              .format(date);
                          // print(formattedDate);
                          viewModel.dateTxtController.text =
                              formattedDate;
                        }
                      },
                      controller: viewModel.dateTxtController,
                      // enabled: false,
                      // validator: (value) =>
                      //     viewModel.validatorService.validateDate(value!),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          suffixIcon:
                          const Icon(Icons.calendar_today),
                          errorBorder: TextBorderStyles.errorBorder,
                          errorStyle: TextStyles.errorTextStyle,
                          disabledBorder:
                          TextBorderStyles.normalBorder,
                          hintText: 'MM/DD/YYYY',
                          labelText: 'Appointment Date*',
                          // disabledBorder: ,
                          labelStyle: TextStyles.tsBody1(
                              color: Palettes.kcNeutral1),
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always,
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffADADAD))),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue)),
                          // suffixIcon: SvgPicture.asset(
                          //   'lib/assets/icons/Calendar.svg',
                          //   color: Palettes.kcBlueMain1,
                          //   fit: BoxFit.scaleDown,
                          // )
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       'Procedure*',
                    //     ),
                    //     ActionChip(
                    //       label: Text(
                    //           viewModel.selectedProcedures.length <= 0
                    //               ? 'Select'
                    //               : 'Add more'),
                    //       labelPadding:
                    //       EdgeInsets.symmetric(horizontal: 8),
                    //       labelStyle:
                    //       TextStyles.tsBody2(color: Colors.white),
                    //       backgroundColor: Palettes.kcBlueMain1,
                    //       tooltip: 'Select Procedure',
                    //       onPressed: () =>
                    //           model.openProcedureFullScreenModal(
                    //             procedureTxtController,
                    //           ),
                    //     )
                    //   ],
                    // ),
                    // Visibility(
                    //   visible: model.selectedProcedures.length > 0
                    //       ? true
                    //       : false,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         border: Border.all(
                    //             color: Palettes.kcBlueMain1, width: 1)),
                    //     padding: EdgeInsets.all(4),
                    //     child: Wrap(
                    //       spacing: 4,
                    //       children: model.selectedProcedures
                    //           .map((e) => InputChip(
                    //         label: Text(e.procedureName),
                    //         backgroundColor:
                    //         Colors.deepPurple.shade50,
                    //         labelStyle: TextStyles.tsBody2(
                    //             color: Colors.deepPurple),
                    //         labelPadding: EdgeInsets.all(1),
                    //         onDeleted: () => model
                    //             .deleteSelectedProcedure(e),
                    //         deleteIcon: CircleAvatar(
                    //             radius: 10,
                    //             backgroundColor:
                    //             Colors.red.shade700,
                    //             child: Icon(
                    //               Icons.close,
                    //               color: Colors.white,
                    //               size: 16,
                    //             )),
                    //       ))
                    //           .toList(),
                    //     ),
                    //   ),
                    // ),
                    TextFormField(
                      controller: viewModel.startTimeTxtController,
                      // enabled: false,
                      // validator: (value) => model.validatorService
                      //     .validateStartTime(value!),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.timer),
                          onPressed: _selectStartTime,
                        ),
                        hintText: 'Set Start Time',
                        labelText: 'Start Time*',
                        labelStyle: TextStyles.tsBody1(
                            color: Palettes.kcNeutral1),
                        errorBorder: TextBorderStyles.errorBorder,
                        errorStyle: TextStyles.errorTextStyle,
                        disabledBorder: TextBorderStyles.normalBorder,
                        floatingLabelBehavior:
                        FloatingLabelBehavior.always,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      // onTap: () =>
                      //     model.selectEndTime(endTimeTxtController),
                      child: TextFormField(
                        controller: viewModel.endTimeTxtController,
                        // enabled: false,
                        // validator: (value) => model.validatorService
                        //     .validateEndTime(value!),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.timer),
                            onPressed: _selectEndTime,
                          ),
                          hintText: 'Set End Time',
                          labelText: 'End Time*',
                          labelStyle: TextStyles.tsBody1(
                              color: Palettes.kcNeutral1),
                          errorBorder: TextBorderStyles.errorBorder,
                          errorStyle: TextStyles.errorTextStyle,
                          disabledBorder: TextBorderStyles.normalBorder,
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      // onTap: () =>
                      //     model.openDentistModal(dentistTxtController),
                      child: TextFormField(
                        controller: viewModel.optometristTxtController,
                        textInputAction: TextInputAction.next,
                        // enabled: false,
                        // validator: (value) => model.validatorService
                        //     .validateDentist(value!),
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            errorBorder: TextBorderStyles.errorBorder,
                            errorStyle: TextStyles.errorTextStyle,
                            disabledBorder:
                            TextBorderStyles.normalBorder,
                            hintText: 'Select Optometrist',
                            labelText: 'Optometrist*',
                            labelStyle: TextStyles.tsBody1(
                                color: Palettes.kcNeutral1),
                            floatingLabelBehavior:
                            FloatingLabelBehavior.always,
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   size: 24,
                            //   color: Palettes.kcBlueMain1,
                            // )
                          suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(
                                  Icons.arrow_drop_down),
                              onSelected: (String value) {
                                viewModel.optometristTxtController
                                    .text = value;
                              },
                              itemBuilder:
                                  (BuildContext context) {
                                return viewModel.optometrist.map<
                                    PopupMenuItem<
                                        String>>(
                                        (String value) {
                                      return PopupMenuItem(
                                          value: value,
                                          child: Text(value));
                                    }).toList();
                              }),

                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: viewModel.remarksTxtController,
                      decoration: InputDecoration(
                        hintText: 'Type here',
                        labelText: 'Remarks (Optional)',
                        labelStyle: TextStyles.tsBody1(
                            color: Palettes.kcNeutral1),
                        // enabledBorder: TextBorderStyles.normalBorder,
                        // focusedBorder: TextBorderStyles.focusedBorder,
                        floatingLabelBehavior:
                        FloatingLabelBehavior.always,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );});
  }
}
