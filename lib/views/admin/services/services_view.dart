import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Object Refraction",
                        style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w400 ),
                      ),

                    ],
                  ),
                  const Text(
                    "Amount: ",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),

                ],
              ),
            ],
          ),
        ));

  }
}
