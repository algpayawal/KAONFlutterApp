import 'package:flutter/material.dart';

class OrderBtn extends StatelessWidget {
  const OrderBtn(
      {Key? key, this.press, this.textColor = Colors.white, required this.text})
      : super(key: key);
  final String text;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 157, 205, 90),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              letterSpacing: 0,
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto-Medium')),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 18),
      ),
    );
  }
}
