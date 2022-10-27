import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opms/views/login/login_view.dart';
import 'package:opms/views/register/register_view_model.dart';
import 'package:opms/views/register/set_up_account_view.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget with InputValidationMixin {
  RegisterView({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
        viewModelBuilder: () => RegisterViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.of(context).pop()),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              extendBodyBehindAppBar: true,
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
                  const Positioned(
                    top: 110,
                    left: 10,
                    child: Text(
                      'Register to\nEyeChoice Optical Shop!',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 180,
                    child: Image.asset(
                      'lib/resources/assets/images/dd1.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    top: 150,
                    //left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        shrinkWrap: true,
                        //physics: const BouncingScrollPhysics(),
                        //controller: ScrollController(initialScrollOffset: 0),
                        //dragStartBehavior: DragStartBehavior.start,
                        children: <Widget>[
                          Container(
                            height: 500,
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
                                  children: [
                                    const Text(
                                      'Create your Account',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Colors.grey
                                      ),
                                    ),
                                    // const Text(
                                    //   '(click Register to Continue)',
                                    //   textAlign: TextAlign.center,
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.w400,
                                    //       fontSize: 15,
                                    //       color: Colors.grey),
                                    // ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          minLines: 1,
                                          maxLines: 3,
                                          keyboardType: TextInputType.multiline,
                                          controller: viewModel.emailController,
                                          //keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            //prefixIcon: Icon(Icons.mail),
                                            contentPadding: EdgeInsets.only(
                                                top: 10, left: 4),
                                            //labelText: 'Email',
                                            hintText: 'Enter Email',
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffADADAD))),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                            // errorText: 'Enter email',
                                            // errorBorder: OutlineInputBorder(
                                            //     borderSide: BorderSide(color: Colors.red)
                                            // ),
                                            border: InputBorder.none,
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
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller:
                                              viewModel.passwordController,
                                          //keyboardType: TextInputType.emailAddress,
                                          obscureText: viewModel.isObscure
                                              ? true
                                              : false,
                                          decoration: InputDecoration(
                                            suffixIcon: IconButton(
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.remove_red_eye,
                                                  color: Colors.black,
                                                  size: 23,
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.changeObscure();
                                              },
                                            ),
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    top: 20, left: 4),
                                            //labelText: 'Password',
                                            hintText: 'Enter Password',
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xffADADAD))),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue)),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller: viewModel
                                              .confirmPasswordController,
                                          //keyboardType: TextInputType.emailAddress,
                                          obscureText: viewModel.isObscureConfirm
                                              ? true
                                              : false,
                                          decoration: InputDecoration(
                                            suffixIcon: IconButton(
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.remove_red_eye,
                                                  color: Colors.black,
                                                  size: 23,
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.changeObscureConfirm();
                                              },
                                            ),
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    top: 20, left: 4),
                                            //labelText: 'Confirm Password',
                                            hintText: 'Confirm Password',
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xffADADAD))),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue)),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
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
                                                    SetUpAccountView()));
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff68F4B1),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        // padding:
                                        // const EdgeInsets.fromLTRB(50, 20, 50, 16),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: const Center(
                                            child: Text(
                                          'Next',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            //color: Colors.black
                                          ),
                                        )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text('Already have an account?'),
                                        const SizedBox(width: 5),
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
                                                        LoginView()));
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, right: 20),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Login',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    //fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
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
