import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:trophies_zone/Components/global-counter.dart';
import 'package:trophies_zone/Controller/c-gta-trophies.dart';
import 'package:trophies_zone/Controller/c-life-is-strange.dart';
import 'package:trophies_zone/Controller/c-rdr2-trophies.dart';

class ChartSection extends StatefulWidget {
  @override
  _ChartSectionState createState() => _ChartSectionState();
}

class _ChartSectionState extends State<ChartSection> {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> data = [
      PieChartSectionData(
          title: '${percent(ControllerRdr2Trophies.countCheked())}%',
          titleStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          color: Colors.greenAccent,
          radius: 150,
          value: percent(ControllerRdr2Trophies.countCheked())),
      PieChartSectionData(
          title: '${percent(ControllerGtaTrophies.countCheked())}%',
          titleStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          color: Colors.redAccent,
          radius: 150,
          value: percent(ControllerGtaTrophies.countCheked())),
      PieChartSectionData(
          title: '${percent(ControllerLifeIsStrangeTrophies.countCheked())}%',
          titleStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          color: Colors.amberAccent,
          radius: 150,
          value: percent(ControllerLifeIsStrangeTrophies.countCheked())),
    ];

    return PieChart(PieChartData(
      sections: data,
      centerSpaceRadius: 0,
      sectionsSpace: 0,
      startDegreeOffset: 180,
    ));
  }
}

double percent(int value) {
  if (value == 0) {
    return 0;
  }

  double result = value / CheckedCounter.counter;
  result = result * 100;

  print('here $result');
  return double.parse(result.toStringAsFixed(2));
}
