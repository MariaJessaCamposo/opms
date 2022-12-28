import 'package:flutter/material.dart';
import 'package:opms/views/admin/transaction/transactionpage_view.dart';

class PatientInfoView extends StatelessWidget {
  const PatientInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Patient Info',
          style: TextStyle(fontSize: 20),
        ),
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios),
        //     onPressed: () => Navigator.of(context).pop()),

        elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff68D2F4),
              )),
          Positioned(
            top: 20,
            left: 120,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: const Color(0xff68F4B1),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey)),
              child: Image.asset(
                'lib/resources/assets/images/avatar.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
              top: 150,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: const [
                            Text(
                              "Daniel Padilla",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            Text("Patient Name"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                color: const Color(0xff68D2F4),
                                borderRadius: BorderRadius.circular(7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.phone,
                                  size: 19,
                                  color: Colors.white,
                                ),
                                // Image.asset(
                                //   'lib/resources/assets/icons/call.png',
                                //   height: 12,
                                // ),
                                SizedBox(width: 10),
                                Text(
                                  "Call",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                color: const Color(0xff084BCD),
                                borderRadius: BorderRadius.circular(7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/resources/assets/icons/arrow_text.png',
                                  height: 12,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "Message",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/resources/assets/icons/edit.png',
                                  height: 12,
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 14, 8, 15),
                        child: SizedBox(
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.phone,
                                    size: 16,
                                  ),
                                  SizedBox(width: 10),
                                  Text("09094567348")
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/icons/location.png',
                                    height: 16,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text("Batuan, Bohol")
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/icons/appointment.png',
                                    height: 14,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text("March 15, 2001")
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/icons/age.png',
                                    height: 15,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text("21")
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/resources/assets/icons/gender.png',
                                    height: 16,
                                  ),
                                  const SizedBox(width: 14),
                                  const Text("Male")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black12)
                            // boxShadow: [BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 3,
                            //     blurRadius: 5,
                            //     offset: const Offset(0,3)
                            // )]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Edit Patient Details",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                Image.asset('lib/resources/assets/icons/arrow_tri.png')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                   TransactionPageView()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black12)
                              // boxShadow: [BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 3,
                              //     blurRadius: 5,
                              //     offset: const Offset(0,3)
                              // )]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Add Transaction",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                                Image.asset('lib/resources/assets/icons/arrow_tri.png')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black12)
                            // boxShadow: [BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 3,
                            //     blurRadius: 5,
                            //     offset: const Offset(0,3)
                            // )]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("History",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                Image.asset('lib/resources/assets/icons/arrow_tri.png')
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
