import 'package:flutter/material.dart';
import 'package:trophies_zone/Components/app-bar.dart';
import 'package:trophies_zone/Components/card-review.dart';
import 'package:trophies_zone/Controller/c-games-news.dart';
import 'package:trophies_zone/Model/m-games-news.dart';

class PageGamesReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCust(
        title: 'Games Reviews',
      ),
      body: ListView.builder(
        itemCount: ControllerGamesReviews.dataLength,
        itemBuilder: (context, index) {
          ModelGamesReviews reviews =
              ControllerGamesReviews.getData.elementAt(index);
          return CardGameReview(data: reviews);
        },
      ),
    );
  }
}
