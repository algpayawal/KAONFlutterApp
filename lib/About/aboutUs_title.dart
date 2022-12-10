// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutUsTitle extends StatelessWidget {
  const AboutUsTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
