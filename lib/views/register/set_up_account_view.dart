import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opms/views/register/set_up_account_view_model.dart';
import 'package:stacked/stacked.dart';

class SetUpAccountView extends StatelessWidget {
  SetUpAccountView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SetUpAccountViewModel>.reactive(
        viewModelBuilder: () => SetUpAccountViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              // appBar: AppBar(
              //   leading: IconButton(
              //       icon: const Icon(Icons.arrow_back_ios),
              //       onPressed: () => Navigator.of(context).pop()),
              //   elevation: 0,
              //   backgroundColor: Colors.transparent,
              // ),
              extendBodyBehindAppBar: true,
              body: Form(
                key: formGlobalKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(children: [
                  Positioned(
                    //top: 25,
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xff68F4B1)
                          //borderRadius: BorderRadius.circular(100),
                          ),
                    ),
                  ),
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
                              color: Color(0xffE8FAEA),
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
                                    const Text(
                                      'Account Set-Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    const Text(
                                      'Set-Up User Information',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff68F4B1),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: const Icon(
                                        Icons.photo_camera,
                                        size: 38,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
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
                                                top: 10, left: 4),
                                            labelText: 'First Name',
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
                                          controller: viewModel.mnameController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Middle Name',
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
                                          controller: viewModel.lnameController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            labelText: 'Last Name',
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
                                                top: 10, left: 4),
                                            labelText:
                                                'Date of Birth(mm/dd/yyyy)',
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
                                                    top: 10, left: 4),
                                            labelText: 'Position',

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
                                      height: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // viewModel.loginFields(
                                        //   viewModel.emailFieldController.text,
                                        //   viewModel.passwordFieldController.text,
                                        // );
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff68F4B1),
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
