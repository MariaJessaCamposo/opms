import 'package:flutter/material.dart';
import 'package:opms/views/login/login_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        disposeViewModel: false,
       // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: ListView(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Eye Choice Optical Shop',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      Container(
                        height: 57,
                        decoration: BoxDecoration(
                            color: Color(0xff6CDAE1),
                            borderRadius: BorderRadius.circular(100)),
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          width: 320,
                          height: 38,
                          child: TextFormField(
                            controller: viewModel.emailController,
                            //keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              contentPadding: EdgeInsets.only(top: 4, left: 4),
                              hintText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 57,
                        decoration: BoxDecoration(
                            color: Color(0xff6CDAE1),
                            borderRadius: BorderRadius.circular(100)),
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          width: 320,
                          height: 38,
                          child: TextFormField(
                            controller: viewModel.passwordController,
                            //keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              contentPadding: EdgeInsets.only(top: 4, left: 4),
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]));
        });
  }
}
