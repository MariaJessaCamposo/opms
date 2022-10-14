import 'package:flutter/material.dart';
import 'package:opms/admin/views/homepage/homepage_view_admin.dart';
import 'package:opms/views/login/login_view.dart';
import 'package:opms/views/register/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OPMS',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
        ),
        //leading: Icon(Icons.arrow_left),
      ),
      body: Align(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ));
                },
                child: const Text('Login')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RegisterView();
                    },
                  ));
                },
                child: const Text('Register')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomepageViewAdmin();
                    },
                  ));
                },
                child: const Text('HomeAdmin')),
          ],
        ),
      ),
    );
  }
}
