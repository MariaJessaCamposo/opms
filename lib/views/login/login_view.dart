import 'package:flutter/material.dart';
import 'package:opms/views/login/login_view_model.dart';
import 'package:opms/views/register/register_view.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget with InputValidationMixin {
  LoginView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: Form(
            key: formGlobalKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Stack(children: [
              Positioned(
                //top: 25,
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xff68F4B1)
                      //borderRadius: BorderRadius.circular(100),
                      ),
                ),
              ),
              Positioned(
                top: 25,
                left: 80,
                child: Image.asset(
                  'lib/resources/assets/images/dd1.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 200,
                //left: 0,
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    //physics: const BouncingScrollPhysics(),
                    //controller: ScrollController(initialScrollOffset: 0),
                    //dragStartBehavior: DragStartBehavior.down,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffE8FAEA),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(51),
                              topRight: Radius.circular(51)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/resources/assets/images/logo.png',
                                  // height: 215,
                                  // width: 200,
                                ),
                                const Text(
                                  'EYECHOICE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                const Text(
                                  'Optical Shop',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  height: 57,
                                  decoration: BoxDecoration(
                                      //color: const Color(0xff6CDAE1),
                                      borderRadius: BorderRadius.circular(100)),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      minLines: 1,
                                      maxLines: 3,
                                      keyboardType: TextInputType.multiline,
                                      controller: viewModel.emailController,
                                      //keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.mail),
                                        contentPadding:
                                            EdgeInsets.only(top: 15, left: 4),
                                        hintText: 'Email',
                                        //border: InputBorder.none,
                                        border: OutlineInputBorder(),
                                      ),
                                      // validator: (email) {
                                      //   if (isEmailValid(email!)) {
                                      //     return null;
                                      //   } else {
                                      //     return 'Enter a valid email address';
                                      //   }
                                      // },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 57,
                                  decoration: BoxDecoration(
                                      //color: const Color(0xff6CDAE1),
                                      borderRadius: BorderRadius.circular(100)),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      controller: viewModel.passwordController,
                                      //keyboardType: TextInputType.emailAddress,
                                      obscureText:
                                          viewModel.isObscure ? true : false,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: const Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onPressed: () {
                                            viewModel.changeObscure();
                                          },
                                        ),
                                        prefixIcon: Icon(Icons.lock),
                                        contentPadding:
                                            EdgeInsets.only(top: 15, left: 4),
                                        hintText: 'Password',
                                        //border: InputBorder.none,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                InkWell(
                                  onTap: () {
                                    // viewModel.loginFields(
                                    //   viewModel.emailFieldController.text,
                                    //   viewModel.passwordFieldController.text,
                                    // );
                                  },
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    // padding:
                                    // const EdgeInsets.fromLTRB(50, 20, 50, 16),
                                    width: MediaQuery.of(context).size.width,
                                    child: const Center(
                                        child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                // ElevatedButton(
                                //     onPressed: (){},
                                //     child: Text(
                                //       'Log in'
                                //     ),
                                //
                                // ),
                                const InkWell(
                                  // onTap: () {
                                  //   viewModel.navigationService.pushNamed(
                                  //       Routes.Register,
                                  //       arguments: LoginRegisterArguments());
                                  // },
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0, right: 20),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'New to Eye Choice?\nRegister now and make your doctor appointment easier!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 11.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                InkWell(
                                  onTap: () {
                                    // viewModel.loginFields(
                                    //   viewModel.emailFieldController.text,
                                    //   viewModel.passwordFieldController.text,
                                    // );
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterView()));
                                  },
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    // padding:
                                    // const EdgeInsets.fromLTRB(50, 20, 50, 16),
                                    width: MediaQuery.of(context).size.width,
                                    child: const Center(
                                        child: Text(
                                      'Sign Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ));
        });
  }
}

//form validation mixin
mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length > 7;

  bool isEmailValid(String email) {
    final pattern = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return pattern.hasMatch(email);
  }
}
