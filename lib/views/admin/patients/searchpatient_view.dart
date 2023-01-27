import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/views/admin/patients/patient_info/patient_info.dart';
import 'package:opms/views/admin/patients/patientspage_view_model.dart';
import 'package:stacked/stacked.dart';

class SearchPatientView extends StatefulWidget {
  const SearchPatientView({Key? key}) : super(key: key);

  @override
  State<SearchPatientView> createState() => _SearchPatientViewState();
}

class _SearchPatientViewState extends State<SearchPatientView> {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('patients');

  String name = "";

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PatientsPageViewModel>.reactive(
        viewModelBuilder: () => PatientsPageViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextFormField(
                  // controller: viewModel.searchController,
                  textAlign: TextAlign.start,
                  textInputAction: TextInputAction.search,
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // viewModel.changeObscure();
                        //  name = viewModel.searchController.text;
                        // viewModel.searchController.clear();
                        name = "";
                      },
                    ),
                    contentPadding: const EdgeInsets.only(top: 8, left: 8),
                    hintText: 'Search...',
                    border: InputBorder.none,
                    //border: OutlineInputBorder(),
                  ),
                ),
              ),
              elevation: 0,
            ),
            body: StreamBuilder<QuerySnapshot>(
                stream: _users.snapshots().asBroadcastStream(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    if (snapshot.data!.docs
                        .where((QueryDocumentSnapshot<Object?> element) =>
                            element['full_name']
                                .toString()
                                .toLowerCase()
                                .contains(name.toLowerCase()))
                        .isEmpty) {
                      return Center(
                        child: Text('No search name found'),
                      );
                    } else {
                      //fetch data here
                      // print(snapshot.data);
                      return ListView(
                        children: [
                          ...snapshot.data!.docs
                              .where((QueryDocumentSnapshot<Object?> element) =>
                                  element['full_name']
                                      .toString()
                                      .toLowerCase()
                                      .contains(name.toLowerCase()))
                              .map((QueryDocumentSnapshot<Object?> data) {
                            final String fullname = data.get('full_name');
                            final String address = data.get('address');

                            return ListTile(
                                onTap: () => Get.to(() => PatientInfoView()),
                                title: Text(fullname),
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'lib/resources/assets/images/avatar.png')),
                                subtitle: Text(address));
                          })
                        ],
                      );
                    }
                  }
                }),
          );
        });
  }
}
