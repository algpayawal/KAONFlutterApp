import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/constants.dart';

class HomeImg extends StatelessWidget {
  const HomeImg({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 00),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 6.5,
            ),
          ),
        ),
      ],
    );
  }
}

iconBackButton(BuildContext context) {
  return IconButton(
    color: kPrimaryColor,
    iconSize: 28,
    icon: const Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
