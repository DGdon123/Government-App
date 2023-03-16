import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:prabidhi/pie_model.dart';
import 'package:prabidhi/ui_helper.dart';

class PieCharting extends StatelessWidget {
  final List<PieSeries> dating;

  PieCharting({required this.dating});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PieSeries, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: dating,
        domainFn: (PieSeries series, _) => series.year,
        measureFn: (PieSeries series, _) => series.subscribers,
        colorFn: (PieSeries series, _) => series.barColor,
        labelAccessorFn: (PieSeries series, _) => '${series.year}',
      ),
    ];

    return Container(
      height: UiHelper.displayHeight(context) * 0.28,
      padding: EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 7, left: 12.3),
                  height: UiHelper.displayHeight(context) * 0.02,
                  width: UiHelper.displayWidth(context) * 0.039,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 0, 255),
                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0, 8),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9.8, left: 7),
                  child: Text(
                    'महिला जनसंख्या: 49.3%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0.3,
                        fontFamily: "KumbhSans",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF222222),
                        fontSize: UiHelper.displayWidth(context) * 0.034),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7, left: 30),
                  height: UiHelper.displayHeight(context) * 0.02,
                  width: UiHelper.displayWidth(context) * 0.039,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 0, 0),
                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0, 8),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9, left: 7),
                  child: Text(
                    'पुरुष जनसंख्या: 50.7%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0.3,
                        fontFamily: "KumbhSans",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF222222),
                        fontSize: UiHelper.displayWidth(context) * 0.034),
                  ),
                ),
              ],
            ),
            Expanded(
              child: charts.PieChart(series, animate: true),
            )
          ],
        ),
      ),
    );
  }
}
