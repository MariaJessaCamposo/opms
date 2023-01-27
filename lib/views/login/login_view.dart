import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opms/views/admin/homepage/home_view.dart';
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
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                // color: Color(0xff73CEF4),
              ),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  //controller: ScrollController(initialScrollOffset: 0),
                  //dragStartBehavior: DragStartBehavior.down,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 80,
                              child: Image.asset(
                                'lib/resources/assets/images/logo.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'EYECHOICE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25),
                            ),
                          ),
                         const Align(
                           alignment: Alignment.center,
                           child: Text(
                              'Optical Shop',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17),
                            ),
                         ),
                          const SizedBox(
                            height: 60,
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
                                  prefixIcon: const Icon(Icons.lock),
                                  contentPadding: const EdgeInsets.only(
                                      top: 15, left: 4),
                                  hintText: 'Password',
                                  //border: InputBorder.none,
                                  border: const OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          const InkWell(
                            child: Text(
                              'Forgot Password',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 11.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              // viewModel.loginFields(
                              //   viewModel.emailFieldController.text,
                              //   viewModel.passwordFieldController.text,
                              // );
                              Get.to(() => const HomeView());

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const HomeView()));
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xff73CEF4),
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
                                ),
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
                          InkWell(
                            // onTap: () {
                            //   viewModel.navigationService.pushNamed(
                            //       Routes.Register,
                            //       arguments: LoginRegisterArguments());
                            // },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'New to Eye Choice?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 11.5,
                                    ),
                                  ),
                                  Text(
                                    'Register now and make your doctor appointment easier!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 11.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              // viewModel.loginFields(
                              //   viewModel.emailFieldController.text,
                              //   viewModel.passwordFieldController.text,
                              // );
                              Get.to(() => RegisterView());
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xff73CEF4),
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
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
