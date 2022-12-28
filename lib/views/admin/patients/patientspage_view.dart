import 'package:flutter/material.dart';
import 'package:opms/views/admin/patients/add_patient/add_patient_view.dart';
import 'package:opms/views/admin/patients/patients_view.dart';
import 'package:opms/views/admin/patients/patientspage_view_model.dart';
import 'package:stacked/stacked.dart';

class PatientsPageView extends StatelessWidget {
  const PatientsPageView({Key? key}) : super(key: key);

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AddPatientView()));
              },
              isExtended: true,
              //tooltip: "Scroll to Bottom",
              label: Row(
                children: const [Icon(Icons.add), Text('Add Patient',
                  style: TextStyle(
                      fontSize: 12
                  ),
                )],
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
                            child: Container(
                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                controller: viewModel.searchController,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  suffixIcon: IconButton(
                                    icon: const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    onPressed: () {
                                      // viewModel.changeObscure();
                                    },
                                  ),
                                  // prefixIcon: Icon(Icons.search),
                                  contentPadding:
                                      const EdgeInsets.only(top: 8, left: 8),
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                  //border: OutlineInputBorder(),
                                ),
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
                        child: ListView.separated(
                          primary: false,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.only(bottom: 10),
                          itemBuilder: (context, index) => const PatientsView(),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                          itemCount: 5,
                        ),
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
