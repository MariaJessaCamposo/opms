import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/views/admin/homepage/home_view.dart';
import 'package:opms/views/login/login_view.dart';
import 'package:opms/views/register/register_view.dart';

// void main() {
//   runApp(const MyApp());
// }

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());

}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Opms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
          color: Color(0xff68D2F4),
            //color: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
      // home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   //final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'OPMS',
//           style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
//         ),
//         //leading: Icon(Icons.arrow_left),
//       ),
//       body: Align(
//         alignment: AlignmentDirectional.center,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return LoginView();
//                     },
//                   ));
//                 },
//                 child: const Text('Login')),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return RegisterView();
//                     },
//                   ));
//                 },
//                 child: const Text('Register')),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return const HomeView();
//                     },
//                   ));
//                 },
//                 child: const Text('Home')),
//           ],
//         ),
//       ),
//     );
//   }
// }
