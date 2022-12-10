// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  const StepTwo(
      {Key? key, this.press, this.textColor = Colors.white, required this.text})
      : super(key: key);

  final String text;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0.00),
      child: ClipRRect(
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 00.0),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Wrap(
                    children: [
                      Card(
                        elevation: 3,
                        color: const Color.fromARGB(255, 35, 46, 29),
                        child: SizedBox(
                          width: double.infinity,
                          height: 96.0,
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Image.asset("assets/images/cal-1200.png",
                                    scale: 4,
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        color: const Color.fromARGB(255, 35, 46, 29),
                        child: SizedBox(
                          width: double.infinity,
                          height: 96.0,
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Image.asset("assets/images/cal-1500.png",
                                    scale: 4,
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        color: const Color.fromARGB(255, 35, 46, 29),
                        child: SizedBox(
                          width: double.infinity,
                          height: 96.0,
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Image.asset("assets/images/cal-2000.png",
                                    scale: 4,
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
