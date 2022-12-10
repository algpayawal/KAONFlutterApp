import 'package:flutter/material.dart';
import 'package:firebase/Menu/menu_cards.dart';

class Vegan extends StatelessWidget {
  const Vegan({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 50,
                          child: Text(
                            'VEGAN MEALS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 35, 46, 29),
                              fontFamily: 'Roboto-Medium',
                              fontSize: 37,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Text(
                            'Good for managing blood sugar while lowering carb intake.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 35, 46, 29),
                              fontFamily: 'Roboto-Medium',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, bottom: 50.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 20.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Wrap(
                          children: const [
                            MenuCard(
                                imgUrl: 'assets/images/vegan-1.png',
                                text: 'VEGGIE STEW',
                                cals: '250 cals',
                                price: 'Php 200.00'),
                            MenuCard(
                              imgUrl: 'assets/images/vegan-2.png',
                              text: 'SQUASH STIR FRY',
                              cals: '250 cals',
                              price: 'Php 200.00',
                            ),
                            MenuCard(
                              imgUrl: 'assets/images/vegan-3.png',
                              text: 'TERIYAKI TOFU',
                              cals: '250 cals',
                              price: 'Php 200.00',
                            ),
                            MenuCard(
                                imgUrl: 'assets/images/vegan-4.png',
                                text: 'QUINOA SALAD',
                                cals: '200 cals',
                                price: 'Php 170.00'),
                            MenuCard(
                                imgUrl: 'assets/images/vegan-5.png',
                                text: 'BOMBAY BURRITOS',
                                cals: '320 cals',
                                price: 'Php 260.00'),
                            MenuCard(
                              imgUrl: 'assets/images/vegan-6.png',
                              text: 'COCONUT RICE BOWL',
                              cals: '280 cals',
                              price: 'Php 230.00',
                            ),
                            MenuCard(
                              imgUrl: 'assets/images/vegan-7.png',
                              text: 'VEGETABLE BIRYANI',
                              cals: '270 cals',
                              price: 'Php 290.00',
                            ),
                            MenuCard(
                                imgUrl: 'assets/images/vegan-8.png',
                                text: 'VEGAN RAMEN',
                                cals: '320 cals',
                                price: 'Php 270.00'),
                          ],
                        ),
                      ),
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
