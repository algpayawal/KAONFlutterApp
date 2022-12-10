import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  const Desc({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 15,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
