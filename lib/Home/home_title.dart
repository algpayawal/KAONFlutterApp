import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
