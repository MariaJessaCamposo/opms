import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:opms/views/admin/homepage/home_view.dart';
import 'package:opms/views/login/login_view.dart';
import 'package:opms/views/register/register_view_model.dart';
import 'package:opms/views/register/set_up_account_view.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget with InputValidationMixin {
  RegisterView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  final CollectionReference _users =
  FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
        viewModelBuilder: () => RegisterViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                title:  const Text(
                  'Get On Board!',
                  textAlign: TextAlign.center,
                  style:
                  const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.of(context).pop()),
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              // extendBodyBehindAppBar: true,
              body: Form(
                key: formGlobalKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  //physics: const BouncingScrollPhysics(),
                  //controller: ScrollController(initialScrollOffset: 0),
                  //dragStartBehavior: DragStartBehavior.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/resources/assets/images/dd1.png',
                              fit: BoxFit.contain,
                              width: 130,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Create your profile to start your Journey!',
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                            ),

                            const SizedBox(height: 15),
                            // const Text(
                            //   'Create your Account',
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.w700,
                            //       fontSize: 24,
                            //       color: Colors.grey
                            //   ),
                            // ),
                            // const Text(
                            //   '(click Register to Continue)',
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 15,
                            //       color: Colors.grey),
                            // ),
                            // const SizedBox(
                            //   height: 40,
                            // ),


                            SizedBox(
                              child: Center(
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  minLines: 1,
                                  maxLines: 3,
                                  keyboardType: TextInputType.multiline,
                                  controller: viewModel.fnameController,
                                  //keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    //prefixIcon: Icon(Icons.mail),
                                    contentPadding: EdgeInsets.only(
                                        top: 10, left: 15),
                                    labelText: 'Full Name',
                                    //hintText: 'Enter Email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffADADAD))),
                                    focusedBorder: OutlineInputBorder(
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
                            // const SizedBox(
                            //   height: 12,
                            // ),
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
                                      print(date);
                                      String formattedDate =
                                      DateFormat('MM/dd/yyyy')
                                          .format(date);
                                      print(formattedDate);
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
                                        top: 10, left: 15),
                                    labelText:
                                    'Date of Birth(mm/dd/yyyy)',
                                    //hintText: 'Enter Email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffADADAD))),
                                    focusedBorder: OutlineInputBorder(
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
                                        top: 10, left: 15),
                                    labelText: 'Gender',
                                    //hintText: 'Enter Email',
                                    enabledBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color(0xffADADAD))),
                                    focusedBorder:
                                    const OutlineInputBorder(
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
                                  viewModel.positionController,
                                  //keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    suffixIcon: PopupMenuButton<String>(
                                        icon: const Icon(
                                            Icons.arrow_drop_down),
                                        onSelected: (String value) {
                                          viewModel.positionController
                                              .text = value;
                                        },
                                        itemBuilder:
                                            (BuildContext context) {
                                          return viewModel.position.map<
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
                                        top: 10, left: 15),
                                    labelText: 'Position',

                                    enabledBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color(0xffADADAD))),
                                    focusedBorder:
                                    const OutlineInputBorder(
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
                                  controller: viewModel.emailController,
                                  //keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    //prefixIcon: Icon(Icons.mail),
                                    contentPadding: EdgeInsets.only(
                                        top: 10, left: 15),
                                    //labelText: 'Email',
                                    labelText: 'Enter Email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffADADAD))),
                                    focusedBorder: OutlineInputBorder(
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
                                  controller:
                                  viewModel.passwordController,
                                  //keyboardType: TextInputType.emailAddress,
                                  obscureText: viewModel.isObscure
                                      ? true
                                      : false,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: const Padding(
                                        padding:
                                        EdgeInsets.only(right: 10),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.black,
                                          size: 23,
                                        ),
                                      ),
                                      onPressed: () {
                                        viewModel.changeObscure();
                                      },
                                    ),
                                    contentPadding:
                                    const EdgeInsets.only(
                                        top: 20, left: 15),
                                    // labelText: 'Password',
                                    hintText: 'Enter Password',
                                    enabledBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color(0xffADADAD))),
                                    focusedBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue)),
                                    border: InputBorder.none,
                                  ),
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
                                  controller: viewModel
                                      .confirmPasswordController,
                                  //keyboardType: TextInputType.emailAddress,
                                  obscureText: viewModel.isObscureConfirm
                                      ? true
                                      : false,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: const Padding(
                                        padding:
                                        EdgeInsets.only(right: 10),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.black,
                                          size: 23,
                                        ),
                                      ),
                                      onPressed: () {
                                        viewModel.changeObscureConfirm();
                                      },
                                    ),
                                    contentPadding:
                                    const EdgeInsets.only(
                                        top: 20, left: 15),
                                    //labelText: 'Confirm Password',
                                    hintText: 'Confirm Password',
                                    enabledBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color(0xffADADAD))),
                                    focusedBorder:
                                    const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue)),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),


                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) =>
                              //           const HomeView()));
                              //   // viewModel.loginFields(
                              //   //   viewModel.emailFieldController.text,
                              //   //   viewModel.passwordFieldController.text,
                              //   // );
                              // },
                              onTap: () async {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialog(
                                        title: const Text(
                                          'Continue',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        // content:
                                        // const Text('Continue?'),
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
                                                    // final date_reg = viewModel.dateregController.text;
                                                    // final fname = viewModel
                                                    //     .fullnameController
                                                    //     .text;
                                                    // final mname = viewModel
                                                    //     .mnameController
                                                    //     .text;
                                                    // final lname = viewModel
                                                    //     .lnameController
                                                    //     .text;
                                                    // final birthday =
                                                    //     viewModel
                                                    //         .dateController
                                                    //         .text;
                                                    // final gender = viewModel
                                                    //     .genderController
                                                    //     .text;
                                                    // final age = viewModel
                                                    //     .ageController
                                                    //     .text;
                                                    // final address =
                                                    //     viewModel
                                                    //         .addressController
                                                    //         .text;
                                                    // final contact =
                                                    //     viewModel
                                                    //         .contactController
                                                    //         .text;
                                                    //
                                                    // viewModel.createUser(
                                                    //     date_reg: date_reg,
                                                    //     fname: fname,
                                                    //     // mname: mname,
                                                    //     // lname: lname,
                                                    //     birthday:
                                                    //     birthday,
                                                    //     gender: gender,
                                                    //     age: int.parse(
                                                    //         age),
                                                    //     address:
                                                    //     address,
                                                    //     contact:
                                                    //     contact);

                                                    Get.to(() =>
                                                    const HomeView());


                                                    ScaffoldMessenger
                                                        .of(context)
                                                        .showSnackBar(
                                                        const SnackBar(
                                                            content:
                                                            Text('Registered successfully!')));
                                                  },
                                                  child: const Center(
                                                      child: Text(
                                                        'Yes',
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
                                height: 40,
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
                                      'Register',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        //color: Colors.black
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Already have an account?'),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    // viewModel.loginFields(
                                    //   viewModel.emailFieldController.text,
                                    //   viewModel.passwordFieldController.text,
                                    // );
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginView()));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, right: 20),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Login',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}

//form validation mixin
mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length > 7;

  bool isEmailValid(String email) {
    final pattern = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return pattern.hasMatch(email);
  }
}
