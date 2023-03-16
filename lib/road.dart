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

class Road extends StatefulWidget {
  const Road({Key? key}) : super(key: key);

  @override
  _RoadState createState() => _RoadState();
}

class _RoadState extends State<Road> {
  bool _showChart = false;

  final List<PopulationSeries> data = [
    PopulationSeries(
      year: 'road_type1',
      subscribers: 3050,
    ),
    PopulationSeries(
      year: 'road_type2',
      subscribers: 2000,
    ),
    PopulationSeries(
      year: 'road_type3',
      subscribers: 5000,
    ),
    PopulationSeries(
      year: 'road_type4',
      subscribers: 2000,
    ),
  ];
  final List<PopulationSeries> data1 = [
    PopulationSeries(
      year: 'road_type1',
      subscribers: 100,
    ),
    PopulationSeries(
      year: 'road_type2',
      subscribers: 200,
    ),
    PopulationSeries(
      year: 'road_type3',
      subscribers: 2000,
    ),
    PopulationSeries(
      year: 'road_type4',
      subscribers: 400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("सडक",
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
                            'सडकको कुल लम्बाई अनुसार सारांश',
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
                          margin: const EdgeInsets.only(left: 10.5),
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
                            'सडकको औसत चौदाई अनुसार सारांश',
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
                    columnSpacing: 8,
                    columns: [
                      DataColumn(
                          label: Text('Label',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Length',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Breadth',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('Wards',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('road_type1')),
                        DataCell(Text('87')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('road_type2')),
                        DataCell(Text('400')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('road_type3')),
                        DataCell(Text('800')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('road_type4')),
                        DataCell(Text('500')),
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
