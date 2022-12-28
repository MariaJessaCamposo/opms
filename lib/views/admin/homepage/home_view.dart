import 'package:flutter/material.dart';
import 'package:opms/views/admin/appointments/appointmentspage_view.dart';
import 'package:opms/views/admin/homepage/homepage_view_admin.dart';
import 'package:opms/views/admin/homepage/homepage_view_admin_model.dart';
import 'package:opms/views/admin/patients/patientspage_view.dart';
import 'package:opms/views/admin/products/productspage_view.dart';
import 'package:opms/views/admin/services/servicespage_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomepageViewAdminModel>.reactive(
        viewModelBuilder: () => HomepageViewAdminModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            // appBar: AppBar(
            //   //toolbarHeight: 48,
            //   automaticallyImplyLeading: viewModel.stackIndex == 0
            //       ? false
            //       : viewModel.stackIndex == 1 || viewModel.stackIndex == 4
            //           ? true
            //           : false,
            //   leading: viewModel.stackIndex == 1 || viewModel.stackIndex == 4
            //       ? IconButton(
            //           icon: Icon(Icons.arrow_back_ios_new),
            //           onPressed: () {
            //             viewModel.changeIndex(0);
            //           },
            //         )
            //       : null,
            //   title: Text(
            //     viewModel.stackIndex == 0
            //         ? ''
            //         : viewModel.stackIndex == 1
            //             ? 'Patient'
            //             : viewModel.stackIndex == 2
            //                 ? 'Appointment'
            //                 : viewModel.stackIndex == 3
            //                     ? 'Products'
            //                     : viewModel.stackIndex == 4
            //                         ? 'Services'
            //                         : '',
            //     style: const TextStyle(
            //       fontFamily: 'Avalon',
            //       fontSize: 26,
            //       fontWeight: FontWeight.w700,
            //       color: Color(0xff1F2732),
            //     ),
            //   ),
            //
            //   elevation: 0,
            //   // actions: viewModel.stackIndex == 0 || viewModel.stackIndex == 2
            //   //     ? <Widget>[
            //   //         IconButton(
            //   //           icon: SvgPicture.asset(
            //   //             SvgIcons.searchIcon,
            //   //           ),
            //   //           onPressed: () {
            //   //             viewModel.navigationService.pushNamed(
            //   //                 Routes.SearchPageView,
            //   //                 arguments: SearchPageViewArguments(
            //   //                     items: viewModel.items));
            //   //           },
            //   //         )
            //   //       ]
            //   //     : viewModel.stackIndex == 3
            //   //         ? <Widget>[
            //   //             IconButton(
            //   //               icon: const Icon(
            //   //                 Icons.add_circle_outline,
            //   //                 color: Colors.black,
            //   //               ),
            //   //               onPressed: () {
            //   //                 viewModel.isProfileTrue();
            //   //                 viewModel.navigationService
            //   //                     .pushNamed(Routes.AddShoeView);
            //   //               },
            //   //             ),
            //   //             IconButton(
            //   //               icon: const Icon(
            //   //                 Icons.notifications,
            //   //                 color: Colors.black,
            //   //               ),
            //   //               onPressed: () {},
            //   //             )
            //   //           ]
            //   //         : null,
            //   // backgroundColor: Colors.white,
            // ),
              body: IndexedStack(
                index: viewModel.stackIndex,
                children: const [
                  HomepageViewAdmin(),
                  PatientsPageView(),
                  AppointmentsPageView(),
                  ProductsPageView(),
                  ServicesPageView()
                ],
              ),
            bottomNavigationBar: Container(
              height: 55,
              //color: Colors.white,
              color: const Color(0xff73CEF4),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                   // mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: viewModel.isHome
                              ? const Color(0xff1F2732)
                              : Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                          ),

                        ),
                        child: IconButton(
                          onPressed: () {
                            // viewModel.initialize();
                            viewModel.changeIndex(0);
                          },
                          icon: Image.asset(
                            'lib/resources/assets/icons/home.png',
                            //fit: BoxFit.contain,
                            color:
                            viewModel.isHome ? Colors.white : Colors.black,
                          ),


                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: viewModel.isHome
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontFamily: 'Avenir',
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: viewModel.isPatient
                              ? const Color(0xff1F2732)
                              : Colors.white,
                          border:
                          Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        child: IconButton(
                          onPressed: () async {
                            // await applicationViewModel.initializeWishlist();
                            viewModel.changeIndex(1);
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => PatientsViewPage()));
                          },
                          icon: Image.asset(
                            'lib/resources/assets/icons/patients.png',
                            //fit: BoxFit.contain,
                            color:
                            viewModel.isPatient ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Patients',
                        style: TextStyle(
                          fontWeight: viewModel.isPatient
                              ? FontWeight.bold
                              : FontWeight.normal,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: viewModel.isAppointment
                              ? Colors.black
                              : Colors.white,
                          border:
                          Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        child: IconButton(
                          onPressed: () {
                            viewModel.isAppointmentTrue();
                            viewModel.changeIndex(2);
                          },
                          icon: Image.asset(
                            'lib/resources/assets/icons/appointment.png',
                            //fit: BoxFit.contain,
                            color:
                            viewModel.isAppointment ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Appointment',
                        style: TextStyle(
                          fontWeight: viewModel.isAppointment
                              ? FontWeight.bold
                              : FontWeight.normal,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          viewModel.isProduct ? Colors.black : Colors.white,
                          border:
                          Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        child: Stack(children: [
                          IconButton(
                            onPressed: () {
                              //viewModel.initializeCart();
                              viewModel.changeIndex(3);
                            },
                            icon: Image.asset(
                              'lib/resources/assets/icons/products.png',
                              //fit: BoxFit.contain,
                              color:
                              viewModel.isProduct ? Colors.white : Colors.black,
                            ),
                          ),
                          // Positioned(
                          //     right: 0,
                          //     child: ViewModelBuilder<
                          //             ApplicationViewModel>.reactive(
                          //         disposeViewModel: false,
                          //         onModelReady: (model) => model.getMyCart(),
                          //         viewModelBuilder: () =>
                          //             locator<ApplicationViewModel>(),
                          //         builder: (context, model, child) {
                          //           return model.cart.isNotEmpty
                          //               ? Container(
                          //                   height: 20,
                          //                   width: 20,
                          //                   decoration: BoxDecoration(
                          //                     shape: BoxShape.circle,
                          //                     color: const Color(0xffE24C4D),
                          //                     border: Border.all(
                          //                       width: 2,
                          //                       color: Colors.white,
                          //                     ),
                          //                   ),
                          //                   child: Center(
                          //                       child: Text(
                          //                     '${model.cart.length}',
                          //                     textAlign: TextAlign.center,
                          //                     style: const TextStyle(
                          //                       fontSize: 14,
                          //                       fontWeight: FontWeight.w600,
                          //                       color: Colors.white,
                          //                     ),
                          //                   )))
                          //               : Container();
                          //         })),
                        ]),
                      ),
                      Text(
                        'Products',
                        style: TextStyle(
                          fontWeight: viewModel.isProduct
                              ? FontWeight.bold
                              : FontWeight.normal,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: viewModel.isServices
                              ? const Color(0xff1F2732)
                              : Colors.white,
                          border:
                          Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        child: IconButton(
                          onPressed: () async {
                            // await applicationViewModel.initializeWishlist();
                            viewModel.changeIndex(4);

                          },
                          icon: Image.asset(
                            'lib/resources/assets/icons/services.png',
                            //fit: BoxFit.contain,
                            color:
                            viewModel.isServices ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Services',
                        style: TextStyle(
                          fontWeight: viewModel.isServices
                              ? FontWeight.bold
                              : FontWeight.normal,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            );

        });
  }
}
