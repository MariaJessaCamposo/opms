import 'package:flutter/material.dart';

class PatientsView extends StatelessWidget {
  const PatientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        //height: 160,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //const SizedBox(height: 10),

              Row(
                children: [
                  Image.asset(
                    'lib/resources/assets/images/avatar.png',
                    height: 50,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Daniel Padilla",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(Old)',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      const Text(
                        "Age: 21",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                            'lib/resources/assets/icons/call.png',
                            height: 12,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "0927627223",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'lib/resources/assets/icons/location.png',
                            height: 12,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "Carmen, Bohol",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_today,
                            size: 12,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Nov 15, 2001",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
