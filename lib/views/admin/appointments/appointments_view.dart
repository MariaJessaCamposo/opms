import 'package:flutter/material.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.green)),
              child: const Text("APPROVED",
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
              ),
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
                  padding: const EdgeInsets.only(top: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Comprehensive Eye and Vision Examination",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "Patient: Daniel Padilla",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "Optometrist: Dr. Angel Plaza",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "Date: Feb 02, 2023",
                        style: TextStyle(fontSize: 12),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Time: 5:00 - 6:00 pm"),
                Text("Update Status ->",
                    style: TextStyle(color: Color(0xff187D4D))),
              ],
            ),
          ],
        ));
  }
}
