import 'package:flutter/material.dart';

class ProductBtn extends StatelessWidget {
  const ProductBtn(
      {Key? key,
      this.press,
      this.textColor = Colors.white,
      required this.imgUrl})
      : super(key: key);
  final String imgUrl;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.95,
      child: ClipRRect(
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 241, 245, 223),
      ),
      onPressed: press,
      child: Image.asset(imgUrl, alignment: Alignment.center, fit: BoxFit.fill),
    );
  }
}
