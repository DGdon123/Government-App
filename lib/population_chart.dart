import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:prabidhi/population_series.dart';
import 'package:prabidhi/ui_helper.dart';
import 'subscriber_series.dart';

class PopulationChart extends StatelessWidget {
  final List<PopulationSeries> data, data1;

  PopulationChart({required this.data, required this.data1});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PopulationSeries, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (PopulationSeries series, _) => series.year,
        measureFn: (PopulationSeries series, _) => series.subscribers,
        fillColorFn: (PopulationSeries series, _) {
          return charts.ColorUtil.fromDartColor(Color(0xFFFF6766));
        },
      ),
      charts.Series(
        id: "Subs",
        data: data1,
        domainFn: (PopulationSeries series, _) => series.year,
        measureFn: (PopulationSeries series, _) => series.subscribers,
        fillColorFn: (PopulationSeries series, _) {
          return charts.ColorUtil.fromDartColor(Color(0xFF87C7F3));
        },
      ),
    ];

    return Container(
      height: UiHelper.displayHeight(context) * 0.28,
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: charts.BarChart(series, animate: true),
            )
          ],
        ),
      ),
    );
  }
}
