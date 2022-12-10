// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:firebase/CheckOut/step_one.dart';
import 'package:firebase/CheckOut/step_two.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key, required this.title});
  final String title;
  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  // ignore: unused_field, prefer_final_fields
  int _currentIndex = 0;
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 245, 223),
      appBar: AppBar(
        title: Image.asset('assets/images/kaon_logo.png',
            width: 30, fit: BoxFit.cover),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 35, 46, 29),
      ),
      body: Center(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 40.0, bottom: 30.0, left: 40.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                            height: 90,
                            child: Text(
                              'START YOUR HEALTHY LIFESTYLE IN TWO EASY STEPS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 35, 46, 29),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Stepper(
                        steps: const [
                          Step(
                              title: Text(
                                'Step One - Choose your Plan',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 217, 120, 35),
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: StepOne(text: '')),
                          Step(
                            title: Text(
                              'Step Two - Choose your Calorie Count',
                              style: TextStyle(
                                color: Color.fromARGB(255, 217, 120, 35),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: StepTwo(text: ''),
                          ),
                        ],
                        onStepTapped: (int newIndex) {
                          setState(() {
                            _currentStep = newIndex;
                          });
                        },
                        currentStep: _currentStep,
                        onStepContinue: () {
                          if (_currentStep != 1) {
                            setState(() {
                              _currentStep += 1;
                            });
                          }
                        },
                        onStepCancel: () {
                          if (_currentStep != 0) {
                            setState(() {
                              _currentStep -= 1;
                            });
                          }
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.local_dining),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
          selectedItemColor: const Color.fromARGB(255, 217, 120, 35),
          backgroundColor: const Color.fromARGB(255, 241, 245, 223)),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Lentil Stew',
    'Roasted Spiced Salmon',
    'Shrimp Linguine and Chorizo',
    'Spinach Enchiladas',
    'Pesto Pasta with Green Beans and Potatoes',
    'Spiced Lamb Meatball',
    'Roasted Curry Salmon With Tomatoes',
    'Bacon-Wrapped Sweet Potatoes',
    'Grilled Caprese Pesto Chicken Skewers',
    'Smoked Salmon Poke Bites',
    'Cauliflower Rice Sushi',
    'Chicken Fillet with Salad',
    'Spaghetti Squash Pasta',
    'Bacon Cabbage Skillet',
    'Fajita Chicken Breasts Casserole',
    'Pepper Chicken Stir Fry',
    'Tuscan Soup',
    'Spinach Chicken Casserole'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var letter in searchTerms) {
      if (letter.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(letter);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var letter in searchTerms) {
      if (letter.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(letter);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
