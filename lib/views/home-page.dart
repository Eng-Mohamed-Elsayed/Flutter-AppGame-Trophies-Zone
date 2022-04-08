import 'package:flutter/material.dart';

import 'package:trophies_zone/Components/custom-navigation.dart';

import 'package:trophies_zone/views/games-page.dart';
import 'package:trophies_zone/views/reviews-page.dart';
import 'package:trophies_zone/views/trophies-page.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _indexPage = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [PageGamesReviews(), PageGames(), PageTrophiesStat()];
    return Scaffold(
      body: _pages[_indexPage],
      bottomNavigationBar: NavigationCust(
        indexPage: _indexPage,
        onClick: (index) {
          setState(() {
            _indexPage = index;
          });
        },
      ),
    );
  }
}
