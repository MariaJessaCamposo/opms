import 'package:flutter/material.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330,
        //height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
            boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0,1)
            )],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/resources/assets/images/avatar.png',
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const Text(
                        "Comprehensive Eye and Vision Examination",
                        style: TextStyle(fontSize: 10),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Patient:",
                            style: TextStyle(
                                fontSize: 11,
                               ),
                          ),
                          Text(
                            "Daniel Padilla",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Optometrist:",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Dr. Angel Plaza",
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Date:",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Feb 02, 2023",
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //border: Border.all(color: Colors.green),
                        color: Colors.green),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "APPROVED",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Time: 5:00 - 6:00 pm", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  Text("Update Status ->",
                      style: TextStyle(color: Color(0xff187D4D), fontSize: 12)),
                ],
              ),
            ],
          ),
        ));
  }
}
