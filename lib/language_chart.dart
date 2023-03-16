import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:prabidhi/ui_helper.dart';
import 'language_series.dart';
import 'subscriber_series.dart';

class LanguageChart extends StatelessWidget {
  final List<LanguageSeries> data;

  LanguageChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LanguageSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (LanguageSeries series, _) => series.year,
          measureFn: (LanguageSeries series, _) => series.subscribers,
          colorFn: (LanguageSeries series, _) => series.barColor),
    ];

    return Container(
      height: UiHelper.displayHeight(context) * 0.28,
      padding: EdgeInsets.all(8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
