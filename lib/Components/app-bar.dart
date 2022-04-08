import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCust extends StatelessWidget with PreferredSizeWidget {
  AppBarCust({this.title = 'Trophies'});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.staatliches(
            textStyle: TextStyle(fontSize: 25, wordSpacing: 4)),
      ),
      backgroundColor: Colors.black87,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
