import 'package:firebase/constants.dart';
import 'package:flutter/material.dart';

class TitleBarAbout extends StatelessWidget {
  const TitleBarAbout({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 270.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 25,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 35, 46, 29)),
          ),
        ),
      ),
    );
  }
}
