import 'package:flutter/material.dart';
import 'package:trophies_zone/Components/app-bar.dart';
import 'package:trophies_zone/Components/chart-data.dart';
import 'package:trophies_zone/Components/chart-indicator.dart';
import 'package:trophies_zone/Components/global-counter.dart';
import 'package:trophies_zone/Controller/c-gta-trophies.dart';
import 'package:trophies_zone/Controller/c-life-is-strange.dart';
import 'package:trophies_zone/Controller/c-rdr2-trophies.dart';

// ignore: must_be_immutable
class PageTrophiesStat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCust(
        title: 'Trophies Statistics',
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 350,
              child: ChartSection(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.black,
                  child: Column(
                    children: [
                      ChartIndicator(
                          title:
                              'Red Dead Redmption ||:   ${ControllerRdr2Trophies.countCheked()}',
                          color: Colors.redAccent),
                      ChartIndicator(
                          title:
                              'Grand Theft Auto V:   ${ControllerGtaTrophies.countCheked()}',
                          color: Colors.greenAccent),
                      ChartIndicator(
                          title:
                              'Life Is Strange:   ${ControllerLifeIsStrangeTrophies.countCheked()}',
                          color: Colors.yellow),
                      ChartIndicator(
                          title: 'Total Trophies:   ${CheckedCounter.counter}',
                          color: Colors.white),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
