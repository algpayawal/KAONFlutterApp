// ignore_for_file: prefer_const_constructors, unused_import, file_names
import 'package:firebase/About/aboutUs_title.dart';
import 'package:firebase/Signup/signup_page.dart';
import 'package:firebase/components/tbar_about.dart';
import 'package:firebase/components/title_bar.dart';
import 'package:firebase/components/upside.dart';
import 'package:firebase/components/upsideAbt.dart';
import 'package:firebase/constants.dart';
import 'package:firebase/widgets/rounded_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SingleChildScrollView(
          child: Stack(children: [
            const UpsideAbt(
              imgUrl: "assets/images/login.png",
            ),
            const TitleBarAbout(title: 'ABOUT US'),
            Padding(
              padding: const EdgeInsets.only(top: 330.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 35, 46, 29),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "WHO ARE WE?",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Roboto-Medium',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Center(
                          child: Text(
                            'KAON is a meal delivery service that delivers highly customized meals to your door based on your preferences, lifestyle, health needs, and goals. Our company is a great one-stop shop who cater those individuals who want to enjoy flavorful meals made with fresh ingredients while still getting healthy.',
                            style: TextStyle(
                              color: kPrimaryLightColor,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "VISION",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Roboto-Medium',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Center(
                          child: Text(
                            "KAON envisions a community where each and every one has access to wholesome meals - to sell authentic and healthy meals that are tasty and beneficial to every one's health.",
                            style: TextStyle(
                              color: kPrimaryLightColor,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "MISSION",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Roboto-Medium',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Center(
                          child: Text(
                            "Making great meals that promote healthy lifestyles is what KAON value the most. We support serving authentic, tasty, and healthy meals that leave you feeling good.",
                            style: TextStyle(
                              color: kPrimaryLightColor,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.justify,
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
