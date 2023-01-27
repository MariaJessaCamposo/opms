import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/views/admin/patients/add_patient/add_patient_view.dart';
import 'package:opms/views/admin/patients/patient_info/patient_info.dart';
import 'package:opms/views/admin/patients/patients_view.dart';
import 'package:opms/views/admin/patients/patientspage_view_model.dart';
import 'package:opms/views/admin/patients/searchpatient_view.dart';
import 'package:stacked/stacked.dart';

class PatientsPageView extends StatelessWidget {
  PatientsPageView({Key? key}) : super(key: key);

  final CollectionReference _patients =
      FirebaseFirestore.instance.collection('patients');


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PatientsPageViewModel>.reactive(
        viewModelBuilder: () => PatientsPageViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              heroTag: 'patientTag',
              onPressed: () {
                Get.to(() => AddPatientView());
              },
              isExtended: true,
              //tooltip: "Scroll to Bottom",
              label: Row(
                children: const [
                  Icon(Icons.add),
                  Text(
                    'Add Patient',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),


            body: Form(
              child: Container(
                color: Colors.lightBlue,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          const Text("Optical Patients",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                          const SizedBox(height: 10),
                          Center(
                            child: InkWell(
                              onTap: () => Get.to(() => SearchPatientView()),
                              child: Container(
                                height: 40,
                                width: 330,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8, right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Search...',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey
                                      ),
                                      ),
                                      Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      ),

                                    ],
                                  ),
                                ),
                                // child: TextFormField(
                                //   controller: viewModel.searchController,
                                //   textAlign: TextAlign.start,
                                //   decoration: InputDecoration(
                                //     prefixIcon: const Icon(Icons.search),
                                //     suffixIcon: IconButton(
                                //       icon: const Padding(
                                //         padding: EdgeInsets.only(right: 10),
                                //         child: Icon(
                                //           Icons.close,
                                //           color: Colors.grey,
                                //         ),
                                //       ),
                                //       onPressed: () {
                                //         // viewModel.changeObscure();
                                //         Get.to(() => SearchPatientView());
                                //       },
                                //     ),
                                //     // prefixIcon: Icon(Icons.search),
                                //     contentPadding:
                                //         const EdgeInsets.only(top: 8, left: 8),
                                //     hintText: 'Search...',
                                //     border: InputBorder.none,
                                //     //border: OutlineInputBorder(),
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Flexible(
                          child: SizedBox(
                        //height: 160,
                        child: StreamBuilder(
                            stream: _patients.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              if (streamSnapshot.hasData) {
                                return ListView.builder(
                                  primary: false,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  padding: const EdgeInsets.only(bottom: 10),

                                  itemCount: streamSnapshot.data!.docs.length, //number of rows
                                  itemBuilder: (context, index){
                                    final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                                    final fname = documentSnapshot['full_name'];
                                    // final mname = documentSnapshot['middle_name'];
                                    // final lname = documentSnapshot['last_name'];
                                    return Card(
                                      margin: const EdgeInsets.all(8),
                                      child: ListTile(
                                        onTap: () => Get.to(() => PatientInfoView()),
                                        title: Row(
                                          children: [
                                            Text(fname)
                                            // Text(documentSnapshot['first_name']),
                                            // Text(documentSnapshot['last_name']),
                                          ],
                                        ),
                                        leading: CircleAvatar(child: Image.asset('lib/resources/assets/images/avatar.png')),
                                        subtitle: Text(documentSnapshot['address'].toString()),
                                      ),
                                    );
                                  },
                                  //   separatorBuilder: (context, index) =>
                                  //     const SizedBox(
                                  //   height: 10,
                                  // ),
                                );
                              }
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
