import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Head_img extends StatelessWidget {
  const Head_img({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height / 4,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
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
