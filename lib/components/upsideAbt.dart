// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/constants.dart';

class UpsideAbt extends StatelessWidget {
  const UpsideAbt({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: Colors.white24,
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
