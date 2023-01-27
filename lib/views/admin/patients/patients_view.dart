// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:intl/intl.dart';
// import 'package:opms/constants/styles/palette_color.dart';
// import 'package:opms/constants/styles/text_styles.dart';
//
// class PatientCard extends StatelessWidget {
//   final String image;
//   final String name;
//   final String phone;
//   final String address;
//   final String? age;
//   final String? birthDate;
//   final DateTime dateCreated;
//   PatientCard(
//       {Key? key,
//         required this.image,
//         required this.name,
//         required this.phone,
//         required this.address,
//         this.age,
//         this.birthDate,
//         required this.dateCreated})
//       : super(key: key);
//
//   // final urlLauncherService = locator<URLLauncherService>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width - 50,
//       padding: EdgeInsets.symmetric(
//         horizontal: 12,
//         vertical: 10,
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 120,
//             height: 120,
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey,
//                 border: Border.all(
//                   color: Palettes.kcNeutral5,
//                   width: 2,
//                 ),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 1.5,
//                       offset: Offset(0, 2)),
//                 ]),
//             child:  ClipRRect(
//               borderRadius: BorderRadius.circular(120),
//               // child: CachedNetworkImage(
//               //     imageUrl: image,
//               //     fit: BoxFit.cover,
//               //     filterQuality:  FilterQuality.high,
//               //     progressIndicatorBuilder: (context, url, progress) =>
//               //         CircularProgressIndicator(
//               //           value: progress.progress,
//               //           valueColor: AlwaysStoppedAnimation(
//               //             Colors.white,
//               //           ),
//               //         )),
//             ),
//           ),
//           SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 21,
//                   width: double.maxFinite,
//                   child: Row(
//                     children: [
//                       Text(
//                         name,
//                         overflow: TextOverflow.ellipsis,
//                         style:
//                         TextStyles.tsHeading4(color: Palettes.kcNeutral1),
//                       ),
//                       Expanded(
//                         child: Visibility(
//                           visible: DateFormat.yMMMd().format(dateCreated) ==
//                               DateFormat.yMMMd().format(DateTime.now()),
//                           child: Container(
//                             height: 21,
//                             alignment: Alignment.topCenter,
//                             padding: const EdgeInsets.only(left: 4),
//                             child: Text(
//                               '(New)',
//                               overflow: TextOverflow.fade,
//                               style: TextStyle(
//                                   color: Colors.redAccent,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Age: ',
//                       style: TextStyles.tsHeading5(color: Palettes.kcNeutral1),
//                     ),
//                     Text(
//                       '$age',
//                       style: TextStyles.tsHeading5(color: Palettes.kcNeutral1),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: double.maxFinite,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 10),
//                           Row(
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/icons/Call.svg',
//                                 height: 18,
//                                 width: 18,
//                                 color: Palettes.kcBlueDark,
//                               ),
//                               SizedBox(width: 5),
//                               Text(
//                                 phone,
//                                 style: TextStyles.tsBody2(
//                                   color: Colors.grey.shade700,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 1),
//                           Row(
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/icons/Location.svg',
//                                 height: 20,
//                                 width: 20,
//                                 color: Palettes.kcBlueDark,
//                               ),
//                               SizedBox(width: 5),
//                               Text(
//                                 address,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyles.tsBody3(
//                                   color: Colors.grey.shade700,
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(height: 1),
//                           Row(
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/icons/Calendar.svg',
//                                 height: 18,
//                                 width: 18,
//                                 color: Palettes.kcBlueDark,
//                               ),
//                               SizedBox(width: 5),
//                               Text(
//                                 birthDate ?? '',
//                                 style: TextStyles.tsBody2(
//                                   color: Colors.grey.shade700,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }







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
