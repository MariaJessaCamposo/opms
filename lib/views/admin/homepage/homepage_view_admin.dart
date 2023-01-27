import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/views/admin/appointments/appointments_view.dart';
import 'package:opms/views/admin/homepage/homepage_view_admin_model.dart';
import 'package:opms/views/admin/patients/add_patient/add_patient_view.dart';
import 'package:opms/views/login/login_view.dart';
import 'package:opms/views/user_profile/user_profile_page_view.dart';
import 'package:stacked/stacked.dart';

class HomepageViewAdmin extends StatelessWidget {
  const HomepageViewAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomepageViewAdminModel>.reactive(
        viewModelBuilder: () => HomepageViewAdminModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              leading: InkWell(
                onTap: () => Get.to(const UserProfilePageView()),
                child: Image.asset(
                  'lib/resources/assets/images/doc.png',
                  //fit: BoxFit.contain,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hi, Good Day!",
                    style: TextStyle(fontSize: 15),
                    //semanticsLabel: 'Dr. Angel',
                  ),
                  Text(
                    "Dr. Angel...",
                    style: TextStyle(fontSize: 15),
                    //semanticsLabel: 'Dr. Angel',
                  ),
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none)),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text(
                                'Are you sure you want to log out?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              // content: const Text('Continue?'),
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
                                          Get.to(LoginView());

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      'Log Out')));
                                        },
                                        child: const Center(
                                            child: Text(
                                          'Yes',
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
                    icon: const Icon(Icons.logout))
              ],
            ),

            //elevation: 0,
            //backgroundColor: Color(0xff73CEF4),

            //extendBodyBehindAppBar: true,
            body: SafeArea(
                child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    decoration: const BoxDecoration(color: Color(0xff68D2F4)),
                  )),

                  Positioned(
                    top: 10,
                    left: 120,
                    child: Column(
                      children: const [
                        Text(
                          'EYECHOICE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        Text(
                          'Optical Shop',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   top: 10,
                  //   left: -4,
                  //   child: Image.asset(
                  //     'lib/resources/assets/images/dd3.png',
                  //     height: 140,
                  //     //width: 100,
                  //   ),
                  // ),
                  Positioned(
                    top: 145,
                    //left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        //height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(38),
                          //     topRight: Radius.circular(38)),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 38, 8, 8),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Appointments Today",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Text("View All>",
                                        style: TextStyle(
                                            color: Color(0xff187D4D))),
                                  ],
                                ),
                              ),
                              Flexible(
                                  child: SizedBox(
                                //height: 160,
                                child: ListView.separated(
                                  primary: false,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  itemBuilder: (context, index) =>
                                      const AppointmentsView(),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 10),
                                  itemCount: 2,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 12,
                      right: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Container(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ]),
                          child: Row(
                            // scrollDirection: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // InkWell(
                              //   onTap: () {},
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.center,
                              //     children: const [
                              //       Icon(
                              //         Icons.person_add,
                              //       ),
                              //       Text(
                              //         "Add\nPatient",
                              //         textAlign: TextAlign.center,
                              //         style: TextStyle(fontSize: 8),
                              //       )
                              //     ],
                              //   ),
                              // ),
                              // //const SizedBox(width: 8),
                              // InkWell(
                              //   onTap: () {},
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.center,
                              //     children: const [
                              //       Icon(
                              //         Icons.sell,
                              //       ),
                              //       Text(
                              //         "Add\nProduct",
                              //         textAlign: TextAlign.center,
                              //         style: TextStyle(fontSize: 8),
                              //       )
                              //     ],
                              //   ),
                              // ),
                              // //const SizedBox(width: 8),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddPatientView()));
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.add_circle,
                                      ),
                                      Text(
                                        "Add\nPatient",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              //const SizedBox(width: 8),
                              const VerticalDivider(color: Colors.grey),

                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.receipt,
                                      ),
                                      Text(
                                        "Add\nExpenses",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              //const SizedBox(width: 8),
                              const VerticalDivider(color: Colors.grey),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.pie_chart,
                                      ),
                                      Text(
                                        "Reports",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            )),
          );
        });
  }
}
