import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/constants.dart';

class UpsideSignUp extends StatelessWidget {
  const UpsideSignUp({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: kPrimaryLightColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 10,
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
