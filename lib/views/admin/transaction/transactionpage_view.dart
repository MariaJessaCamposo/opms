import 'package:flutter/material.dart';
import 'package:opms/views/admin/homepage/homepage_view_admin.dart';
import 'package:opms/views/admin/transaction/transactionpage_view_model.dart';
import 'package:stacked/stacked.dart';

class TransactionPageView extends StatelessWidget {
  TransactionPageView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactionPageViewModel>.reactive(
        viewModelBuilder: () => TransactionPageViewModel(),
    disposeViewModel: false,
    // onModelReady: (model) => model.init(),
    builder: (context, viewModel, child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Transaction",
          style: TextStyle(fontSize: 20),
        ),
      ),
      //extendBodyBehindAppBar: true,
      body: Form(
          key: formGlobalKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black)),
          child: ListView(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  decoration: const BoxDecoration(color: Color(0xff68D2F4)),
                  child: const Center(
                      child: Text(
                    "EYEGLASSES",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ))),
              //
              // SizedBox(
              //   height: 140,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 2, right: 2),
              //     child: Row(
              //       children: [
              //         Column(
              //           children: [
              //             SizedBox(
              //               width: 160,
              //               child: TextFormField(
              //                 textAlign: TextAlign.start,
              //                 minLines: 1,
              //                 maxLines: 2,
              //                 keyboardType: TextInputType.multiline,
              //                 controller: viewModel.frameBrand,
              //                 //keyboardType: TextInputType.emailAddress,
              //                 decoration: const InputDecoration(
              //                   //prefixIcon: Icon(Icons.mail),
              //                   contentPadding: EdgeInsets.only(
              //                       top: 10, left: 4),
              //                   labelText: 'Frame Brand / Model',
              //                   //hintText: 'Enter Email',
              //                   enabledBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Color(0xffADADAD))),
              //                   focusedBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Colors.blue)),
              //                   // errorText: 'Enter email',
              //                   // errorBorder: OutlineInputBorder(
              //                   //     borderSide: BorderSide(color: Colors.red)
              //                   // ),
              //                   border: InputBorder.none,
              //                 ),
              //                 // validator: (email) {
              //                 //   if (isEmailValid(email!)) {
              //                 //     return null;
              //                 //   } else {
              //                 //     return 'Enter a valid email address';
              //                 //   }
              //                 // },
              //               ),
              //             ),
              //             SizedBox(
              //               width: 160,
              //               child: TextFormField(
              //                 textAlign: TextAlign.start,
              //                 minLines: 1,
              //                 maxLines: 2,
              //                 keyboardType: TextInputType.multiline,
              //                 controller: viewModel.frameBarcode,
              //                 //keyboardType: TextInputType.emailAddress,
              //                 decoration: const InputDecoration(
              //                   //prefixIcon: Icon(Icons.mail),
              //                   contentPadding: EdgeInsets.only(
              //                       top: 10, left: 4),
              //                   labelText: 'Frame Barcode',
              //                   //hintText: 'Enter Email',
              //                   enabledBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Color(0xffADADAD))),
              //                   focusedBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Colors.blue)),
              //                   // errorText: 'Enter email',
              //                   // errorBorder: OutlineInputBorder(
              //                   //     borderSide: BorderSide(color: Colors.red)
              //                   // ),
              //                   border: InputBorder.none,
              //                 ),
              //                 // validator: (email) {
              //                 //   if (isEmailValid(email!)) {
              //                 //     return null;
              //                 //   } else {
              //                 //     return 'Enter a valid email address';
              //                 //   }
              //                 // },
              //               ),
              //             )
              //           ],
              //         ),
              //         const VerticalDivider(color: Colors.black),
              //         Column(
              //           children: [
              //             SizedBox(
              //               width: 160,
              //               child: TextFormField(
              //                 textAlign: TextAlign.start,
              //                 minLines: 1,
              //                 maxLines: 2,
              //                 keyboardType: TextInputType.multiline,
              //                 controller: viewModel.lensType,
              //                 //keyboardType: TextInputType.emailAddress,
              //                 decoration: const InputDecoration(
              //                   //prefixIcon: Icon(Icons.mail),
              //                   contentPadding: EdgeInsets.only(
              //                       top: 10, left: 4),
              //                   labelText: 'Lens Brand / Type',
              //                   //hintText: 'Enter Email',
              //                   enabledBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Color(0xffADADAD))),
              //                   focusedBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Colors.blue)),
              //                   // errorText: 'Enter email',
              //                   // errorBorder: OutlineInputBorder(
              //                   //     borderSide: BorderSide(color: Colors.red)
              //                   // ),
              //                   border: InputBorder.none,
              //                 ),
              //                 // validator: (email) {
              //                 //   if (isEmailValid(email!)) {
              //                 //     return null;
              //                 //   } else {
              //                 //     return 'Enter a valid email address';
              //                 //   }
              //                 // },
              //               ),
              //             ),
              //             SizedBox(
              //               width: 160,
              //               child: TextFormField(
              //                 textAlign: TextAlign.start,
              //                 minLines: 1,
              //                 maxLines: 2,
              //                 keyboardType: TextInputType.multiline,
              //                 controller: viewModel.lensTint,
              //                 //keyboardType: TextInputType.emailAddress,
              //                 decoration: const InputDecoration(
              //                   //prefixIcon: Icon(Icons.mail),
              //                   contentPadding: EdgeInsets.only(
              //                       top: 10, left: 4),
              //                   labelText: 'Lens Tint',
              //                   //hintText: 'Enter Email',
              //                   enabledBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Color(0xffADADAD))),
              //                   focusedBorder: UnderlineInputBorder(
              //                       borderSide: BorderSide(
              //                           color: Colors.blue)),
              //                   // errorText: 'Enter email',
              //                   // errorBorder: OutlineInputBorder(
              //                   //     borderSide: BorderSide(color: Colors.red)
              //                   // ),
              //                   border: InputBorder.none,
              //                 ),
              //                 // validator: (email) {
              //                 //   if (isEmailValid(email!)) {
              //                 //     return null;
              //                 //   } else {
              //                 //     return 'Enter a valid email address';
              //                 //   }
              //                 // },
              //               ),
              //             )
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              Container(
                padding: EdgeInsets.all(8),
                child: Table(
                  //defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      //style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow( children: [
                      // Column(children:[Text('Frame Amount')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.frameBrand,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Frame Brand / Model',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensType,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Lens Brand / Type',
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
                      ]),

                    ]),
                       TableRow( children: [
                      // Column(children:[Text('CL Amount')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.frameBarcode,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Frame Barcode',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensTint,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Lens Tint',
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
                      ]),

                    ]),

                  ],
                ),
              ),

              //Divider(color: Colors.grey)
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  decoration: const BoxDecoration(color: Color(0xff68D2F4)),
                  child: const Center(
                      child: Text(
                        "RX SPECTACLE",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ))),
              Container(
                padding: EdgeInsets.all(8),
                child: Table(
                  //defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      //style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow( children: [
                      Column(children:[Text('RIGHT\n(OD)')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specr1,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specr2,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specr3,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specr4,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specr5,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),



                    ]),
                    TableRow( children: [
                      Column(children:[Text('LEFT\n(OS)')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specl1,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specl2,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specl3,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specl4,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.specl5,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),

                    ]),

                  ],
                ),
              ),

              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  decoration: const BoxDecoration(color: Color(0xff68D2F4)),
                  child: const Center(
                      child: Text(
                        "RX CONTACT LENS",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ))),

             Container(
                padding: EdgeInsets.all(8),
                child: Table(
                  //defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      //style: BorderStyle.solid,
                      width: 1),
                  children: [
                    // TableRow( children: [
                    //   Column(children:[Text('Website', style: TextStyle(fontSize: 20.0))]),
                    //   Column(children:[Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
                    //   Column(children:[Text('Review', style: TextStyle(fontSize: 20.0))]),
                    // ]),
                    TableRow( children: [
                      Column(children:[Text('RIGHT\n(OD)')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensr1,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                     Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensr2,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                     Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensr3,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                     Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensr4,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                     Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensr5,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),



                    ]),
                    TableRow( children: [
                      Column(children:[Text('LEFT\n(OS)')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensl1,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensl2,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensl3,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensl4,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensl5,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            //labelText: 'Lens Tint',
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
                      ]),

                    ]),

                  ],
                ),
              ),

              Divider(color: Colors.grey),

              Container(
                padding: EdgeInsets.all(8),
                child: Table(
                  //defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      //style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow( children: [
                      // Column(children:[Text('Frame Amount')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.frameAmount,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                 top: 10, left: 4),
                            labelText: 'Frame Amount',
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
                      ]),

                    ]),
                    TableRow( children: [
                      // Column(children:[Text('Lens Amount')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.lensAmount,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Lens Amount',
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
                      ]),

                    ]),
                    TableRow( children: [
                      // Column(children:[Text('CL Amount')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.clAmount,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'CL Amount',
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
                      ]),

                    ]),
                    TableRow( children: [
                      // Column(children:[Text('Total')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.total,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Total',
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
                      ]),

                    ]),
                    TableRow( children: [
                      // Column(children:[Text('Deposit')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.deposit,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Deposit',
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
                      ]),

                    ]),
                    TableRow( children: [
                      // Column(children:[Text('Balance')]),
                      Column(children:[
                        TextFormField(
                          textAlign: TextAlign.start,
                          minLines: 1,
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          controller: viewModel.balance,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            //prefixIcon: Icon(Icons.mail),
                            contentPadding: EdgeInsets.only(
                                top: 10, left: 4),
                            labelText: 'Balance',
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
                      ]),

                    ]),

                  ],
                ),
              ),

              Divider(color: Colors.grey),

              InkWell(
                onTap: () {

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //         const PatientInfoView()));
                  // viewModel.loginFields(
                  //   viewModel.emailFieldController.text,
                  //   viewModel.passwordFieldController.text,
                  // );

                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                            'Transaction will be saved and receipt will be generated.',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          content: const Text('Continue?'),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(
                                          Colors.redAccent,
                                        )),
                                    onPressed: () {
                                      //viewModel.navigationService.pop();
                                      Navigator.pop(context);

                                    },
                                    child: const Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            //fontSize: 16,
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
                                        MaterialStateProperty.all(
                                          Colors.lightBlue,
                                        )),
                                    onPressed: () async {
                                      // viewModel.addShoe(
                                      //   context,
                                      //   viewModel.nameController.text,
                                      //   viewModel.descriptionController.text,
                                      //   double.parse(
                                      //       viewModel.priceController.text),
                                      //   viewModel.base64String,
                                      //   viewModel.selectedSizes,
                                      //   viewModel.categoryController.text,
                                      // );
                                      // viewModel.navigationService.pushReplacementNamed(Routes.HomepageView);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const HomepageViewAdmin()));

                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Saved Successfully')));
                                    },
                                    child: const Center(
                                        child: Text(
                                          'OK',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            //fontSize: 18,
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
              SizedBox(height: 10)
            ],
          ),
        ),
      )),
    );
    });
  }
}
