import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Colors.transparent,

      extendBodyBehindAppBar: true,
    );
  }
}
// Positioned(
//     top: 30,
//     left: 24,
//     child: Row(
//       children: [
//         Container(
//           width: 48,
//           height: 48,
//           decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(48)),
//           child: Image.asset(
//             'lib/resources/assets/images/doc.png',
//             fit: BoxFit.contain,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 "Hi, Good Day!",
//                 //semanticsLabel: 'Dr. Angel',
//               ),
//               Text(
//                 "Dr. Angel...",
//                 //semanticsLabel: 'Dr. Angel',
//               ),
//             ],
//           ),
//         ),
//       ],
//     )),
// Positioned(
//     top: 20,
//     left: 270,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.notifications_none)),
//         IconButton(
//             onPressed: () {}, icon: const Icon(Icons.logout))
//       ],
//     )),