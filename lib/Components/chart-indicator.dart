import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartIndicator extends StatelessWidget {
  final String title;
  final Color color;

  const ChartIndicator({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.circle,
            size: 15,
            color: color,
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.staatliches(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
