import 'package:flutter/material.dart';
import 'package:opms/views/admin/services/services_view.dart';
import 'package:opms/views/admin/services/servicespage_view_model.dart';
import 'package:stacked/stacked.dart';

class ServicesPageView extends StatelessWidget {
  const ServicesPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesPageViewModel>.reactive(
        viewModelBuilder: () => ServicesPageViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
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
                          const Text("Optical Services",
                              style:  TextStyle(
                                  fontSize: 25, color: Colors.white)),
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
                                controller: viewModel.serviceController,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.search,
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
                              itemBuilder: (context, index) =>
                              const ServicesView(),
                              separatorBuilder: (context, index) =>
                              const SizedBox(height: 10,
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
