import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/pie_chart.dart';
import 'package:prabidhi/pie_model.dart';
import 'package:prabidhi/subscriber_chart.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'language_chart.dart';
import 'language_series.dart';
import 'subscriber_series.dart';

class MatriBhasa extends StatefulWidget {
  const MatriBhasa({Key? key}) : super(key: key);

  @override
  _MatriBhasaState createState() => _MatriBhasaState();
}

class _MatriBhasaState extends State<MatriBhasa> {
  bool _showChart = false;

  final List<LanguageSeries> data = [
    LanguageSeries(
        year: '१',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFFFE0E6),
        )),
    LanguageSeries(
        year: '२',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFD6ECFA),
        )),
    LanguageSeries(
        year: '३',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFEBF5DD),
        )),
    LanguageSeries(
        year: '४',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFEBE0FF),
        )),
    LanguageSeries(
        year: '५',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFE5EFFB),
        )),
    LanguageSeries(
        year: '६',
        subscribers: 116,
        barColor: charts.ColorUtil.fromDartColor(
          Color(0xFFE5E5E5),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("मातृभाषा",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFFFFFFFF),
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(children: [
        Container(
          child: Expanded(
            child: ListView(
              children: [
                UiHelper.verticalSpace(vspace: Spacing.large),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.14,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFE0E6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: Offset(0, 0),
                                blurRadius: 10.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                              //BoxShadow
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'मातृभाषाको सारांश',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 0.3,
                                fontFamily: "KumbhSans",
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.038),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                UiHelper.verticalSpace(vspace: Spacing.xxsmall),
                LanguageChart(
                  data: data,
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Container(
                  width: 100,
                  child: DataTable(
                    showCheckboxColumn: true,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Text('Name',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Value',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Percent',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('१')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('२')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('३')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('४')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('५')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(' ६')),
                        DataCell(Text('116')),
                        DataCell(Text('0.56')),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: UiHelper.displayHeight(context) * 0.1,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
