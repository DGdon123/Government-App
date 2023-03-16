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

class Disabled extends StatefulWidget {
  const Disabled({Key? key}) : super(key: key);

  @override
  _DisabledState createState() => _DisabledState();
}

class _DisabledState extends State<Disabled> {
  bool _showChart = false;

  final List<PopulationSeries> data = [
    PopulationSeries(
      year: 'पूर्ण \nअशक्त \nअपाङ्ग',
      subscribers: 100,
    ),
    PopulationSeries(
      year: 'मध्यम \nअपांगता',
      subscribers: 10,
    ),
    PopulationSeries(
      year: 'अति \nअशक्त \nअपाङ्ग',
      subscribers: 40,
    ),
    PopulationSeries(
      year: 'सामान्य\n अपांगता',
      subscribers: 5,
    ),
    PopulationSeries(
      year: 'अन्य',
      subscribers: 7000,
    ),
  ];
  final List<PopulationSeries> data1 = [
    PopulationSeries(
      year: 'पूर्ण \nअशक्त \nअपाङ्ग',
      subscribers: 100,
    ),
    PopulationSeries(
      year: 'मध्यम \nअपांगता',
      subscribers: 10,
    ),
    PopulationSeries(
      year: 'अति \nअशक्त \nअपाङ्ग',
      subscribers: 40,
    ),
    PopulationSeries(
      year: 'सामान्य\n अपांगता',
      subscribers: 5,
    ),
    PopulationSeries(
      year: 'अन्य',
      subscribers: 7000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("असक्षमता",
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
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 27,
                          ),
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
                            'पुरुष',
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
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18,
                          ),
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
                            'महिला',
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
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18,
                          ),
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.16,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3E39A),
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
                            'अन्य',
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
                    columnSpacing: 10,
                    columns: [
                      DataColumn(
                          label: Text('Name',
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
                      DataColumn(
                          label: Text('Third',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('पूर्ण अशक्त अपाङ्ग')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('मध्यम अपांगता')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('अति अशक्त अपाङ्ग')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('सामान्य अपांगता')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('अन्य')),
                        DataCell(Text('557')),
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
