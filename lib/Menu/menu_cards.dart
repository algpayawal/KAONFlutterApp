// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:firebase/components/add_cart.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      this.press,
      this.textColor = Colors.white,
      required this.imgUrl,
      required this.text,
      required this.cals,
      required this.price})
      : super(key: key);
  final String imgUrl;
  final String text;
  final String cals;
  final String price;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 255, 255, 255),
      margin: const EdgeInsets.only(right: 7.0, bottom: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(imgUrl,
                scale: 4, alignment: Alignment.center, fit: BoxFit.fill),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),

            //name
            SizedBox(
              width: 150,
              height: 40,
              child: Text(
                text,
                style: const TextStyle(
                  color: Color.fromARGB(255, 217, 120, 35),
                  fontFamily: 'Roboto-Medium',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //calories
            SizedBox(
              width: 150,
              height: 30,
              child: Text(
                cals,
                style: const TextStyle(
                  color: Color.fromARGB(255, 217, 120, 35),
                  fontFamily: 'Roboto-Medium',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            //price
            SizedBox(
              width: 150,
              height: 30,
              child: Text(
                price,
                style: const TextStyle(
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontFamily: 'Roboto-Medium',
                  fontSize: 15,
                ),
              ),
            ),

            //Add to cart
            SizedBox(width: 150, height: 35, child: AddtoCartBtn(text: '')),

            const SizedBox(width: 150, height: 5)
          ],
        ),
      ),
    );
  }
}
