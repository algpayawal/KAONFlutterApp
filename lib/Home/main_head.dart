import 'package:flutter/material.dart';

class MainHead extends StatelessWidget {
  const MainHead({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0, right: 19.0, bottom: 20),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
