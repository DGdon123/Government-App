import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:prabidhi/ui_helper.dart';
import 'subscriber_series.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data, data1, data2;

  SubscriberChart(
      {required this.data, required this.data1, required this.data2});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        fillColorFn: (SubscriberSeries series, _) {
          return charts.ColorUtil.fromDartColor(Color(0xFFFF6766));
        },
      ),
      charts.Series(
        id: "Subs",
        data: data1,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        fillColorFn: (SubscriberSeries series, _) {
          return charts.ColorUtil.fromDartColor(Color(0xFF87C7F3));
        },
      ),
      charts.Series(
        id: "Sub",
        data: data2,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        fillColorFn: (SubscriberSeries series, _) {
          return charts.ColorUtil.fromDartColor(Color(0xFFC3E39A));
        },
      )
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
