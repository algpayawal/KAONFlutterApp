// ignore_for_file: prefer_const_constructors, unused_import, file_names
import 'package:firebase/Signup/signup_page.dart';
import 'package:firebase/components/title_bar.dart';
import 'package:firebase/components/upside.dart';
import 'package:firebase/constants.dart';
import 'package:firebase/widgets/rounded_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
            const TitleBarLogin(title: 'CONTACT US'),
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
                      height: 15,
                    ),
                    Text(
                      "LET'S GET IN TOUCH",
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 46, 29),
                        fontFamily: 'Roboto-Medium',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Name',
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
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: TextField(
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
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, bottom: 150.0, right: 30.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Message',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                      ),
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Center(
                            child: Text(
                              'SUBMIT',
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
                      height: 70.0,
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
