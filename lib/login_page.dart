// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase/Signup/signup_page.dart';
import 'package:firebase/components/title_bar.dart';
import 'package:firebase/components/upside.dart';
import 'package:firebase/constants.dart';
import 'package:firebase/widgets/rounded_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showSignUpPage;
  const LoginPage({super.key, required this.showSignUpPage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SingleChildScrollView(
          child: Stack(children: [
            const Upside(
              imgUrl: "assets/images/login.png",
            ),
            const TitleBarLogin(title: 'Login to your account'),
            Padding(
              padding: const EdgeInsets.only(top: 330.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: GestureDetector(
                        onTap: signIn,
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'OpenSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "or use your other accounts",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    iconButton(context),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: widget.showSignUpPage,
                          child: Text(
                            "  Sign up here",
                            style: TextStyle(
                              color: Color.fromARGB(255, 79, 99, 69),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300.0,
                    )
                  ],
                ),
              ),
            ),

            //not a member
          ]),
        ),
      ),
    );
  }
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/twitter.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}
