import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/pie_chart.dart';
import 'package:prabidhi/pie_model.dart';
import 'package:prabidhi/population_chart.dart';
import 'package:prabidhi/population_series.dart';
import 'package:prabidhi/subscriber_chart.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'subscriber_series.dart';

class Awareness extends StatefulWidget {
  const Awareness({Key? key}) : super(key: key);

  @override
  _AwarenessState createState() => _AwarenessState();
}

class _AwarenessState extends State<Awareness> {
  bool _showChart = false;

  final List<PopulationSeries> data = [
    PopulationSeries(
      year: 'वडा १',
      subscribers: 500,
    ),
    PopulationSeries(
      year: 'वडा २',
      subscribers: 600,
    ),
    PopulationSeries(
      year: 'वडा ३',
      subscribers: 550,
    ),
    PopulationSeries(
      year: 'वडा ४',
      subscribers: 300,
    ),
    PopulationSeries(
      year: 'वडा ५',
      subscribers: 250,
    ),
    PopulationSeries(
      year: 'वडा ६',
      subscribers: 370,
    ),
    PopulationSeries(
      year: 'वडा ७',
      subscribers: 200,
    ),
    PopulationSeries(
      year: 'वडा ८',
      subscribers: 400,
    ),
  ];
  final List<PopulationSeries> data1 = [
    PopulationSeries(
      year: 'वडा १',
      subscribers: 500,
    ),
    PopulationSeries(
      year: 'वडा २',
      subscribers: 600,
    ),
    PopulationSeries(
      year: 'वडा ३',
      subscribers: 550,
    ),
    PopulationSeries(
      year: 'वडा ४',
      subscribers: 300,
    ),
    PopulationSeries(
      year: 'वडा ५',
      subscribers: 250,
    ),
    PopulationSeries(
      year: 'वडा ६',
      subscribers: 370,
    ),
    PopulationSeries(
      year: 'वडा ७',
      subscribers: 200,
    ),
    PopulationSeries(
      year: 'वडा ८',
      subscribers: 400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("जागरूकता",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.16,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF6766),
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
                          margin: const EdgeInsets.only(left: 8, top: 5),
                          child: Text(
                            'वडा अनुसार पुरुषको जागरूकता',
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
                    UiHelper.verticalSpace(vspace: Spacing.small),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 9.3),
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.16,
                          decoration: BoxDecoration(
                            color: Color(0xFF87C7F3),
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
                          margin: const EdgeInsets.only(left: 8, top: 5),
                          child: Text(
                            'वडा अनुसार महिलाको जागरूकता',
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
                UiHelper.verticalSpace(vspace: Spacing.small),
                PopulationChart(
                  data: data,
                  data1: data1,
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Container(
                  width: 100,
                  child: DataTable(
                    columnSpacing: 40,
                    columns: [
                      DataColumn(
                          label: Text('Name',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Ward',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Male',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Female',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर १')),
                        DataCell(Text('१')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर २')),
                        DataCell(Text('२')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ३')),
                        DataCell(Text('३')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ४')),
                        DataCell(Text('४')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ५')),
                        DataCell(Text('५')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ६')),
                        DataCell(Text('६')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ७')),
                        DataCell(Text('७')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ८')),
                        DataCell(Text('८')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
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
