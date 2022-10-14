import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageViewAdmin extends StatelessWidget {
  const HomepageViewAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Positioned(
            child: Container(
          decoration: const BoxDecoration(color: Color(0xff68F4B1)),
        )),
        Positioned(
            top: 30,
            left: 24,
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(48)),
                  child: Image.asset(
                    'lib/resources/assets/images/doc.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Good Day!",
                        //semanticsLabel: 'Dr. Angel',
                      ),
                      Text(
                        "Dr. Angel...",
                        //semanticsLabel: 'Dr. Angel',
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
            top: 20,
            left: 270,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
              ],
            )),
        Positioned(
            top: 195,
            left: 55,
            right: 5,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(85, 8, 2, 8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_circle,
                          ),
                          Text(
                            "Add\nServices",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.person_add_alt,
                          ),
                          Text(
                            "Add\nPatient",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.shopping_bag,
                          ),
                          Text(
                            "Add\nProduct",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  ],
                ),
              ),
            )),
        Positioned(
          top: 120,
          left: 140,
          child: Column(
            children: const [
              Text(
                'EYECHOICE',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              Text(
                'Optical Shop',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ],
          ),
        ),
        Positioned(
          top: 78,
          left: -8,
          child: Image.asset(
            'lib/resources/assets/images/dd3.png',
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 260,
          //left: 0,
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              //physics: const BouncingScrollPhysics(),
              //controller: ScrollController(initialScrollOffset: 0),
              //dragStartBehavior: DragStartBehavior.down,
              children: <Widget>[
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Color(0xffE8FAEA),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(38)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Appointments Today"),
                            Text("View All>"),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 330,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    //borderRadius: BorderRadius.circular(10),
                                    color: Colors.green),
                                child: const Text("Approved"),
                              ),
                              SizedBox(
                                  child: Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/images/dd3.png',
                                    height: 90,
                                    width: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Comprehensive Eye and Vision Examination",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Patient: Daniel Padilla",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Optometrist: Dr. Angel Plaza",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Date: Feb 02, 2023",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                              const Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Time: 5:00 - 6:00 pm"),
                                  Text("Update Status ->"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 330,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    //borderRadius: BorderRadius.circular(10),
                                    color: Colors.green),
                                child: const Text("Approved"),
                              ),
                              SizedBox(
                                  child: Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/images/dd3.png',
                                    height: 90,
                                    width: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Comprehensive Eye and Vision Examination",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Patient: Daniel Padilla",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Optometrist: Dr. Angel Plaza",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          "Date: Feb 02, 2023",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                              const Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Time: 5:00 - 6:00 pm"),
                                  Text("Update Status ->"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    )));
  }
}
