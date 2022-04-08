import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trophies_zone/Model/m-games-news.dart';
import '/Components/web-view.dart';

class CardGameReview extends StatelessWidget {
  CardGameReview({required this.data});
  final ModelGamesReviews data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MaterialPageRoute<dynamic> route = MaterialPageRoute(
          builder: (context) =>
              AppWebView(title: data.title, url: data.urlPage),
        );

        Navigator.push(context, route);
      },
      child: Container(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Card(
            color: Colors.red.shade900,
            elevation: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image.network(
                    data.imageUrl,
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Text(
                    data.title,
                    style: GoogleFonts.staatliches(
                      textStyle: TextStyle(fontSize: 23),
                    ),
                    maxLines: 2,
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
