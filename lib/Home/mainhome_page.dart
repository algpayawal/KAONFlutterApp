// ignore_for_file: prefer_const_constructors, unused_import, file_names
import 'package:firebase/About/aboutUs_page.dart';
import 'package:firebase/CheckOut/checkOut_page.dart';
import 'package:firebase/Home/desc.dart';
import 'package:firebase/Home/home_img.dart';
import 'package:firebase/Home/main_head.dart';
import 'package:firebase/Home/order_btn.dart';
import 'package:firebase/Home/prd_btn.dart';
import 'package:firebase/Home/sub_head.dart';
import 'package:firebase/Menu/high_protein.dart';
import 'package:firebase/Menu/low_carb.dart';
import 'package:firebase/Menu/pcos.dart';
import 'package:firebase/Menu/vegan.dart';
import 'package:firebase/Signup/signup_page.dart';
import 'package:firebase/components/title_bar.dart';
import 'package:firebase/components/upside.dart';
import 'package:firebase/constants.dart';
import 'package:firebase/widgets/rounded_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 46, 29),
        body: Center(
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SubHead(
                            title: 'THE FIRST WEALTH IS HEALTH',
                          ),
                          const MainHead(
                            title: 'HEALTHY GOODNESS IN A BOX',
                          ),
                          const HomeImg(
                            imgUrl: "assets/images/img-main.png",
                          ),
                          const Desc(
                              title:
                                  'Bringing the smell and taste of your favorite healthy meals right at your doorstep.'),
                          OrderBtn(
                              text: 'ORDER NOW',
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CheckOutPage(
                                              title: '',
                                            )));
                              }),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 520.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 245, 223),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 70,
                            child: Align(
                              child: Text(
                                'OUR PRODUCTS',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 35, 46, 29),
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ProductBtn(
                              imgUrl: "assets/images/prd_1.png",
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HighProtein(
                                              title: '',
                                            )));
                              }),
                          ProductBtn(
                              imgUrl: "assets/images/prd_2.png",
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LowCarb(
                                              title: '',
                                            )));
                              }),
                          ProductBtn(
                              imgUrl: "assets/images/prd_3.png",
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Vegan(
                                              title: '',
                                            )));
                              }),
                          ProductBtn(
                              imgUrl: "assets/images/prd_4.png",
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const PCOS(
                                              title: '',
                                            )));
                              }),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hello! You are currently signed it as: ${user.email!}',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 35, 46, 29),
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  FirebaseAuth.instance.signOut();
                                },
                                color: Colors.deepOrange[200],
                                // ignore: prefer_const_constructors
                                child: Text('Sign out'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
