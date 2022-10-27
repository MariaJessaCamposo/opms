import 'package:flutter/material.dart';
import 'package:opms/views/admin/homepage/homepage_view_admin_model.dart';
import 'package:opms/views/products/products_view.dart';
import 'package:stacked/stacked.dart';

class HomepageViewClient extends StatelessWidget {
  const HomepageViewClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomepageViewAdminModel>.reactive(
        viewModelBuilder: () => HomepageViewAdminModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              leading: Image.asset(
                'lib/resources/assets/images/doc.png',
                //fit: BoxFit.contain,
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
                IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
              ],
            ),

            //elevation: 0,
            backgroundColor: const Color(0xff68F4B1),

            //extendBodyBehindAppBar: true,
            body: SafeArea(
                child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    decoration: const BoxDecoration(color: Color(0xff68F4B1)),
                  )),
                  Positioned(
                      top: 81,
                      left: 50,
                      right: 5,
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(45, 8, 2, 8),
                          child: Row(
                            // scrollDirection: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/resources/assets/images/mission.png',
                                        width: 32,
                                        height: 35),
                                    const Text(
                                      "MISSION",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                              ),
                              //const SizedBox(width: 8),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/resources/assets/images/vision.png',
                                        width: 32,
                                        height: 35),
                                    const Text(
                                      "VISION",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                              ),
                              //const SizedBox(width: 8),
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'lib/resources/assets/images/goal.png',
                                        width: 32,
                                        height: 35),
                                    const Text(
                                      "GOAL",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 10,
                    left: 140,
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
                  Positioned(
                    top: 10,
                    left: -2,
                    child: Image.asset(
                      'lib/resources/assets/images/dd3.png',
                      height: 140,
                      //width: 100,
                    ),
                  ),
                  Positioned(
                    top: 140,
                    //left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        //height: 500,
                        decoration: const BoxDecoration(
                          color: Color(0xffE8FAEA),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(38),
                              topRight: Radius.circular(38)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("EyeChoice Feeds",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  // Text("View All>",
                                  //     style:
                                  //         TextStyle(color: Color(0xff187D4D))),
                                ],
                              ),
                              Flexible(
                                  child: Container(
                                      height: 160,
                                      //  width: 400,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        physics: const BouncingScrollPhysics(),
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Text(
                                                  "EYE CHOICE OPTICAL\nSHOP ENCOURAGES\nYOU TO MAKE YOUR EYE\nHEALTH A PRIORITY",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xff87DD91)),
                                                ),
                                                Image.asset(
                                                    'lib/resources/assets/images/bglogo.png',
                                                    width: 170,
                                                    height: 100)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                              const Text("Top Products",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              // Text("View All>",
                              //     style:
                              //     TextStyle(color: Color(0xff187D4D))),

                              Flexible(
                                  child: SizedBox(
                                //height: 160,
                                child: ListView.separated(
                                  primary: false,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  itemBuilder: (context, index) =>
                                      const ProductsView(),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 10),
                                  itemCount: 3,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
            bottomNavigationBar: Container(
              height: 70,
              //color: Colors.white,
              color: const Color(0xff68F4B1),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
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
                          icon: Icon(
                            Icons.home,
                            color:
                                viewModel.isHome ? Colors.white : Colors.black,
                          ),
                          // icon: SvgPicture.asset(
                          //   SvgIcons.homeIcon,
                          //   color:
                          //       viewModel.isHome ? Colors.white : Colors.black,
                          // ),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: viewModel.isHome
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontFamily: 'Avenir',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
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
                          },
                          icon: Icon(
                            Icons.supervisor_account,
                            color: viewModel.isPatient
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Patient',
                        style: TextStyle(
                          fontWeight: viewModel.isPatient
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
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
                          icon: Icon(
                            Icons.calendar_view_week,
                            color: viewModel.isAppointment
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Appointment',
                        style: TextStyle(
                          fontWeight: viewModel.isAppointment
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
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
                            icon: Icon(
                              Icons.sell,
                              color: viewModel.isProduct
                                  ? Colors.white
                                  : Colors.black,
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
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
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
                          icon: Icon(
                            Icons.work,
                            color: viewModel.isServices
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Services',
                        style: TextStyle(
                          fontWeight: viewModel.isServices
                              ? FontWeight.bold
                              : FontWeight.normal,
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
