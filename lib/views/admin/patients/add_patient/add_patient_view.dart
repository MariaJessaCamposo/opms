import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:opms/views/admin/patients/add_patient/add_patient_view_model.dart';
import 'package:opms/views/admin/patients/patient_info/patient_info.dart';
import 'package:stacked/stacked.dart';

class AddPatientView extends StatelessWidget {
  AddPatientView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  final CollectionReference _patients =
      FirebaseFirestore.instance.collection('patients');

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddPatientViewModel>.reactive(
        viewModelBuilder: () => AddPatientViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Add Patient',
                  style: TextStyle(fontSize: 20),
                ),
                // leading: IconButton(
                //     icon: const Icon(Icons.arrow_back_ios),
                //     onPressed: () => Navigator.of(context).pop()),

                elevation: 0,
                // backgroundColor: Colors.transparent,
              ),
              extendBodyBehindAppBar: true,
              body: Form(
                key: formGlobalKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(children: [
                  // Positioned(
                  //   //top: 25,
                  //   height: 500,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Container(
                  //     decoration: const BoxDecoration(color: Color(0xff73CEF4)
                  //       //borderRadius: BorderRadius.circular(100),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    top: 0,
                    //left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        shrinkWrap: true,
                        // physics: const BouncingScrollPhysics(),
                        // controller: ScrollController(initialScrollOffset: 0),
                        // dragStartBehavior: DragStartBehavior.down,
                        children: [
                          Container(
                            //height: 500,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(60)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff68F4B1),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Image.asset(
                                        'lib/resources/assets/images/avatar.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
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
                                              viewModel.dateregController.text =
                                                  formattedDate;
                                            }
                                          },
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.datetime,
                                          controller: viewModel.dateregController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            suffixIcon:
                                            Icon(Icons.calendar_today),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText:
                                            'Date of Registration',
                                            //hintText: 'Enter Email',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller: viewModel.fullnameController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Full Name',
                                            hintText: 'First Name, Middle Name, Last Name',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    // SizedBox(
                                    //   child: Center(
                                    //     child: TextFormField(
                                    //       textAlign: TextAlign.start,
                                    //       minLines: 1,
                                    //       maxLines: 3,
                                    //       keyboardType: TextInputType.multiline,
                                    //       controller: viewModel.mnameController,
                                    //       //keyboardType: TextInputType.emailAddress,
                                    //       decoration: const InputDecoration(
                                    //         //prefixIcon: Icon(Icons.mail),
                                    //         contentPadding: EdgeInsets.only(
                                    //             top: 10, left: 4),
                                    //         labelText: 'Middle Name',
                                    //         //hintText: 'Enter Email',
                                    //         enabledBorder: UnderlineInputBorder(
                                    //             borderSide: BorderSide(
                                    //                 color: Color(0xffADADAD))),
                                    //         focusedBorder: UnderlineInputBorder(
                                    //             borderSide: BorderSide(
                                    //                 color: Colors.blue)),
                                    //         // errorText: 'Enter email',
                                    //         // errorBorder: OutlineInputBorder(
                                    //         //     borderSide: BorderSide(color: Colors.red)
                                    //         // ),
                                    //         border: InputBorder.none,
                                    //       ),
                                    //       // validator: (email) {
                                    //       //   if (isEmailValid(email!)) {
                                    //       //     return null;
                                    //       //   } else {
                                    //       //     return 'Enter a valid email address';
                                    //       //   }
                                    //       // },
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(
                                    //   height: 12,
                                    // ),
                                    // SizedBox(
                                    //   child: Center(
                                    //     child: TextFormField(
                                    //       textAlign: TextAlign.start,
                                    //       minLines: 1,
                                    //       maxLines: 3,
                                    //       keyboardType: TextInputType.multiline,
                                    //       controller: viewModel.lnameController,
                                    //       //keyboardType: TextInputType.emailAddress,
                                    //       decoration: const InputDecoration(
                                    //         //prefixIcon: Icon(Icons.mail),
                                    //         contentPadding: EdgeInsets.only(
                                    //             top: 10, left: 4),
                                    //         labelText: 'Last Name',
                                    //         //hintText: 'Enter Email',
                                    //         enabledBorder: UnderlineInputBorder(
                                    //             borderSide: BorderSide(
                                    //                 color: Color(0xffADADAD))),
                                    //         focusedBorder: UnderlineInputBorder(
                                    //             borderSide: BorderSide(
                                    //                 color: Colors.blue)),
                                    //         // errorText: 'Enter email',
                                    //         // errorBorder: OutlineInputBorder(
                                    //         //     borderSide: BorderSide(color: Colors.red)
                                    //         // ),
                                    //         border: InputBorder.none,
                                    //       ),
                                    //       // validator: (email) {
                                    //       //   if (isEmailValid(email!)) {
                                    //       //     return null;
                                    //       //   } else {
                                    //       //     return 'Enter a valid email address';
                                    //       //   }
                                    //       // },
                                    //     ),
                                    //   ),
                                    // ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
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
                                              viewModel.dateController.text =
                                                  formattedDate;
                                            }
                                          },
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.datetime,
                                          controller: viewModel.dateController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            suffixIcon:
                                                Icon(Icons.calendar_today),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText:
                                                'Date of Birth',
                                            //hintText: 'Enter Email',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller: viewModel.ageController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            // suffixIcon: PopupMenuButton<String>(
                                            //     icon: const Icon(
                                            //         Icons.arrow_drop_down),
                                            //     onSelected: (String value) {
                                            //       viewModel.positionController
                                            //           .text = value;
                                            //     },
                                            //     itemBuilder:
                                            //         (BuildContext context) {
                                            //       return viewModel.position.map<
                                            //           PopupMenuItem<
                                            //               String>>(
                                            //               (String value) {
                                            //             return PopupMenuItem(
                                            //                 value: value,
                                            //                 child: Text(value));
                                            //           }).toList();
                                            //     }),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Age',

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller:
                                          viewModel.genderController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            suffixIcon: PopupMenuButton<String>(
                                                icon: const Icon(
                                                    Icons.arrow_drop_down),
                                                onSelected: (String value) {
                                                  viewModel.genderController
                                                      .text = value;
                                                },
                                                itemBuilder:
                                                    (BuildContext context) {
                                                  return viewModel.gender.map<
                                                      PopupMenuItem<
                                                          String>>(
                                                          (String value) {
                                                        return PopupMenuItem(
                                                            value: value,
                                                            child: Text(value));
                                                      }).toList();
                                                }),
                                            contentPadding:
                                            const EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Gender',
                                            //hintText: 'Enter Email',
                                            enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                    Color(0xffADADAD))),
                                            focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller:
                                              viewModel.addressController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Address',
                                            //hintText: 'Enter Email',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller:
                                              viewModel.contactController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Contact Number',
                                            //hintText: 'Enter Email',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
                                          ),
                                          // validator: (email) {
                                          //   if (isEmailValid(email!)) {
                                          //     return null;
                                          //   } else {
                                          //     return 'Enter a valid email address';
                                          //   }
                                          // },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    InkWell(
                                      onTap: () async {

                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return AlertDialog(
                                                title: const Text(
                                                  'New patient will be added.',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                content:
                                                    const Text('Continue?'),
                                                actions: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(
                                                        height: 40,
                                                        child: ElevatedButton(
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                            Colors.redAccent,
                                                          )),
                                                          onPressed: () {
                                                            //viewModel.navigationService.pop();
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: const Center(
                                                              child: Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16,
                                                            ),
                                                          )),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 16,
                                                      ),
                                                      SizedBox(
                                                        height: 40,
                                                        child: ElevatedButton(
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                            Colors.lightBlue,
                                                          )),
                                                          onPressed: () async {
                                                            final date_reg = viewModel.dateregController.text;
                                                            final fname = viewModel
                                                                .fullnameController
                                                                .text;
                                                            // final mname = viewModel
                                                            //     .mnameController
                                                            //     .text;
                                                            // final lname = viewModel
                                                            //     .lnameController
                                                            //     .text;
                                                            final birthday =
                                                                viewModel
                                                                    .dateController
                                                                    .text;
                                                            final gender = viewModel
                                                                .genderController
                                                                .text;
                                                            final age = viewModel
                                                                .ageController
                                                                .text;
                                                            final address =
                                                                viewModel
                                                                    .addressController
                                                                    .text;
                                                            final contact =
                                                                viewModel
                                                                    .contactController
                                                                    .text;

                                                            viewModel.createUser(
                                                              date_reg: date_reg,
                                                                fname: fname,
                                                                // mname: mname,
                                                                // lname: lname,
                                                                birthday:
                                                                    birthday,
                                                                gender: gender,
                                                                age: int.parse(
                                                                    age),
                                                                address:
                                                                    address,
                                                                contact:
                                                                    contact);

                                                            Get.to(() =>
                                                                PatientInfoView());


                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                                    const SnackBar(
                                                                        content:
                                                                            Text('New Patient added successfully!')));
                                                          },
                                                          child: const Center(
                                                              child: Text(
                                                            'OK',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 18,
                                                            ),
                                                          )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff73CEF4),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        // padding:
                                        // const EdgeInsets.fromLTRB(50, 20, 50, 16),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: const Center(
                                            child: Text(
                                          'Save',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            //color: Colors.black
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ));
        });
  }
}
