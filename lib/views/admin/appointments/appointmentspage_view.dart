import 'package:flutter/material.dart';
import 'package:opms/views/admin/appointments/appointments_view.dart';
import 'package:opms/views/admin/appointments/appointmentspage_view_model.dart';
import 'package:stacked/stacked.dart';

class AppointmentsPageView extends StatelessWidget {
  const AppointmentsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppointmentsPageViewModel>.reactive(
        viewModelBuilder: () => AppointmentsPageViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              heroTag: 'uniqueTag',
              onPressed: () {},
              isExtended: true,
              //tooltip: "Scroll to Bottom",
              label: Row(
                children: const [Icon(Icons.add), Text('Add Appointment',
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
                          const Text("Appointment Schedules",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white)),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text(
                              "February 2023",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,

                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 60,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                demoDates("MON", "21", true),
                                demoDates("TUE", "22", false),
                                demoDates("WED", "23", false),
                                demoDates("THU", "24", false),
                                demoDates("FRI", "25", false),
                                demoDates("SAT", "26", false),
                                demoDates("SUN", "27", false),


                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                    const SizedBox(height: 10),



                    Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              height: 36,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount: viewModel.categories.length,
                                itemBuilder: (context, index) => CategoryItem(
                                  category: viewModel.categories[index]
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  //height: 160,
                                  child: ListView.separated(
                                    primary: false,
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    padding: const EdgeInsets.only(bottom: 10),
                                    itemBuilder: (context, index) =>
                                    const AppointmentsView(),
                                    separatorBuilder: (context, index) =>
                                    const SizedBox(height: 10,
                                    ),
                                    itemCount: 2,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  demoDates (String day, String date, bool isSelected) {
    return isSelected ? Container(
      width: 50,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: const Color(0xff107163),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                day,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            //padding: const EdgeInsets.all(10),
            height: 40,
            width: 70,
            decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight:  Radius.circular(10))
            ),
            child: Center(
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    ) : Container(
      width: 50,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: 10),
            // padding: const EdgeInsets.all(7),

            margin: const EdgeInsets.only(top: 5),
            //padding: const EdgeInsets.all(10),
            height: 40,
            width: 70,
            decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight:  Radius.circular(10))
            ),

            child: Center(
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class CategoryItem extends ViewModelWidget<AppointmentsPageViewModel> {
  final String category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context,AppointmentsPageViewModel viewModel) {
    bool isSelected = viewModel.selectedCategory == category;

    return InkWell(
      onTap: () {
        viewModel.onCategorySelected(category);
        //viewModel.getShoesByCategory(category);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? Colors.blue : const Color(0xffD9D9D9),
              border: Border.all(color: Colors.black26),
              borderRadius: const BorderRadius.all(Radius.circular(18))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8),
                    child: Text(
                      category,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.w400,
                        fontFamily: 'Avenir',
                        fontSize: 13,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}