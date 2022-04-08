import 'package:flutter/material.dart';

import 'package:trophies_zone/views/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool flag = false;
  bool flag1 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trophies Zone',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}
