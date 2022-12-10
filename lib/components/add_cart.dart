import 'package:firebase/constants.dart';
import 'package:flutter/material.dart';

class AddtoCartBtn extends StatelessWidget {
  const AddtoCartBtn(
      {Key? key,
      this.press,
      this.textColor = const Color.fromARGB(255, 211, 0, 0),
      required this.text})
      : super(key: key);
  final String text;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(30.0)),
        // ignore: prefer_const_constructors
        child: Center(
          child: const Text(
            'Add to cart',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
