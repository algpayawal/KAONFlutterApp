// ignore_for_file: prefer_const_constructors
import 'package:firebase/components/title_bar_signup.dart';
import 'package:firebase/components/upside_signup.dart';
import 'package:firebase/constants.dart';
import 'package:firebase/widgets/rounded_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SignUpPage({super.key, required this.showLoginPage});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
            const UpsideSignUp(
              imgUrl: "assets/images/login.png",
            ),
            const TitleBarSignUp(title: 'Create your new account'),
            Padding(
              padding: const EdgeInsets.only(top: 330.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 79, 99, 69),
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
                      height: 15,
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
                            controller: _confirmpasswordController,
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
                      height: 15,
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
                              hintText: 'Confirm Password',
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
                        onTap: signUp,
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Center(
                            child: Text(
                              'SIGN UP',
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
                    const SizedBox(
                      height: 10,
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
                          "Already have an account?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: widget.showLoginPage,
                          child: Text(
                            "  Sign in here",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
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
