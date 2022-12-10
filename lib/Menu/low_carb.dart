import 'package:flutter/material.dart';
import 'package:firebase/Menu/menu_cards.dart';

class LowCarb extends StatelessWidget {
  const LowCarb({Key? key, required this.title}) : super(key: key);
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
                            'LOW CARB MEALS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 35, 46, 29),
                              fontFamily: 'Roboto-Medium',
                              fontSize: 37,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 100,
                          child: Text(
                            'The Diet for You to Achieve your Fat Loss Guide',
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
                                imgUrl: 'assets/images/low-carb-1.png',
                                text: 'LETTUCE WRAP',
                                cals: '210 cals',
                                price: 'Php 180.00'),
                            MenuCard(
                              imgUrl: 'assets/images/low-carb-2.png',
                              text: 'CHICKEN CASSEROLE',
                              cals: '250 cals',
                              price: 'Php 230.00',
                            ),
                            MenuCard(
                              imgUrl: 'assets/images/low-carb-3.png',
                              text: 'CHICKEN STIR FRY',
                              cals: '270 cals',
                              price: 'Php 220.00',
                            ),
                            MenuCard(
                                imgUrl: 'assets/images/low-carb-4.png',
                                text: 'ASPARAGUS SALAD',
                                cals: '170 cals',
                                price: 'Php 190.00'),
                            MenuCard(
                                imgUrl: 'assets/images/low-carb-5.png',
                                text: 'MANDARIN CHICKEN SALAD',
                                cals: '250 cals',
                                price: 'Php 240.00'),
                            MenuCard(
                              imgUrl: 'assets/images/low-carb-6.png',
                              text: 'LIME CHICKEN THIGHS',
                              cals: '310 cals',
                              price: 'Php 280.00',
                            ),
                            MenuCard(
                              imgUrl: 'assets/images/low-carb-7.png',
                              text: 'GREEN CHICKEN KABOBS',
                              cals: '250 cals',
                              price: 'Php 275.00',
                            ),
                            MenuCard(
                                imgUrl: 'assets/images/low-carb-8.png',
                                text: 'TACO SALAD',
                                cals: '230 cals',
                                price: 'Php 170.00'),
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
