import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class NavigationCust extends StatelessWidget {
  final int indexPage;
  final Function(int) onClick;
  NavigationCust({
    required this.indexPage,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ConvexAppBar(
      backgroundColor: Colors.black,
      style: TabStyle.react,
      color: Colors.grey,
      activeColor: Colors.red.shade900,
      items: [
        TabItem(icon: Icons.feed, title: 'News'),
        TabItem(icon: Icons.games_rounded, title: 'Games'),
        TabItem(icon: Icons.emoji_events, title: 'Trophies'),
      ],
      initialActiveIndex: 1, //optional, default as 0
      onTap: onClick,
    ));
  }
}
