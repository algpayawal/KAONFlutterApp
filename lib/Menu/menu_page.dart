// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});
  final String title;
  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  // ignore: unused_field, prefer_final_fields
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 46, 29),
      appBar: AppBar(
        title: Image.asset('assets/images/kaon_logo.png',
            width: 30, fit: BoxFit.cover),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 241, 245, 223),
      ),
      body: Center(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                            height: 70,
                            child: Text(
                              'MENU',
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 245, 223),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
