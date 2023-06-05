import 'package:flutter/material.dart';

import '../utils/route_paths.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? devToken;
  String phoneNumberField = '';
  String passwordField = '';
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    // phoneField.dispose();

    super.dispose();
  }

  // void _onClickForgotPassword(BuildContext context) {
  //   //navigate to register screen
  //   Navigator.of(context).pushNamed(RoutePaths.forgotPassword);
  // }

  // void _onClickLogin(
  //     BuildContext context, LoginViewModel loginViewModel) async {
  //   // saveDevToken();
  //   LoginResponse response = await loginViewModel.apiLoginUser(
  //       phoneNumberController.text, passwordController.text);
  //   print("response....${response.message}");

  //   if (response.status == true) {
  //     await appSharedPreference.saveUserToken(response.token ?? "");
  //     print("token...${response.token}");
  //     saveToken();
  //     await appSharedPreference.saveUserRole(response.role ?? "");

  //     response.role == 'Rider'
  //         ? Navigator.of(context).pushAndRemoveUntil(
  //             MaterialPageRoute(builder: (context) => OverviewScreen(0)),
  //             (Route<dynamic> route) => false)
  //         : Navigator.of(context).pushAndRemoveUntil(
  //             MaterialPageRoute(
  //                 builder: (context) => const ListOfCompletedLeads()),
  //             (Route<dynamic> route) => false);

  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('${response.message}')));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    // TODO: implement build

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0XFFEEEEEE),
        body: Stack(
          children: [
            GestureDetector(
              onTap: FocusScope.of(context).unfocus,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: SingleChildScrollView(
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 164,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: height + 80, bottom: 40),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/images/HRMS.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            const Text(
                              'Hello!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 34,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const Text(
                              'Welcome back.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 34,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 42),

                            const Center(
                              child: Text(
                                'Login to your account',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            ////phone number
                            // SizedBox(height: 29),
                            Container(
                              height: 55,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 65.0),
                              padding: EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                autofocus: true,
                                style: TextStyle(color: Colors.black),
                                // textInputAction: TextInputAction.done,
                                controller: phoneNumberController,
                                keyboardType: TextInputType.text,
                                maxLength: 10,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter a username';
                                  } else if (value.length != 5) {
                                    return 'Enter a valid username';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person_outlined,
                                      size: 21, color: Color(0XFF909090)),
                                  border: InputBorder.none,
                                  // labelText: 'Phone Number',
                                  hintText: "Username",
                                  counterText: "",

                                  hintStyle: TextStyle(
                                    color: Color(0XFF909090),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),

                            ///password
                            Container(
                              height: 55,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 15.0, bottom: 10),
                              padding: EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                // focusNode: phoneField,
                                style: TextStyle(color: Colors.black),
                                controller: passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter a password';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.lock_outlined,
                                      size: 21, color: Color(0XFF909090)),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Color(0XFF909090),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('Remember me'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Forgot Password?'),
                                  ],
                                ),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     Spacer(),
                            //     GestureDetector(
                            //       onTap: (){
                            //         _onClickForgotPassword(context);
                            //       },
                            //       child: Text(
                            //         'Forgot Password?',
                            //         style: TextStyle(color: colorPrimary, fontSize: 13,fontWeight: FontWeight.bold),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            SizedBox(height: 72),
                            GestureDetector(
                              onTap: () {
                                // if (globalFormKey.currentState!.validate()) {
                                  // _onClickLogin(context, loginViewModel);
                                  Navigator.of(context)
                                      .pushReplacementNamed(RoutePaths.dashboard);
                                  globalFormKey.currentState!.save();
                                // }
                              },
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                    right: 0.0, left: 0, top: 30, bottom: 25),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  // color: Color(0XFF867070),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF5F8D4E),
                                        Color(0xFF285430)
                                      ]),
                                  borderRadius: BorderRadius.circular(10.00),
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            const SizedBox(height: 72),
                            const Center(
                              child: Text(
                                'Please sign in to use your account',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
    //   },
    // );
  }
}
