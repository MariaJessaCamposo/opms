import 'package:flutter/material.dart';
import 'package:opms/views/admin/patients/patientspage_view_model.dart';
import 'package:stacked/stacked.dart';

class SearchPatientView extends StatelessWidget {
  const SearchPatientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PatientsPageViewModel>.reactive(
        viewModelBuilder: () => PatientsPageViewModel(),
    disposeViewModel: false,
    // onModelReady: (model) => model.init(),
    builder: (context, viewModel, child) {
    return Scaffold(

    );
    });
  }
}
