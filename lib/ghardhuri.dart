import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/pie_chart.dart';
import 'package:prabidhi/pie_model.dart';
import 'package:prabidhi/subscriber_chart.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'subscriber_series.dart';

class GharDhuri extends StatefulWidget {
  const GharDhuri({Key? key}) : super(key: key);

  @override
  _GharDhuriState createState() => _GharDhuriState();
}

class _GharDhuriState extends State<GharDhuri> {
  bool _showChart = false;

  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: '१',
      subscribers: 500,
    ),
    SubscriberSeries(
      year: '२',
      subscribers: 600,
    ),
    SubscriberSeries(
      year: '३',
      subscribers: 550,
    ),
    SubscriberSeries(
      year: '४',
      subscribers: 300,
    ),
    SubscriberSeries(
      year: '५',
      subscribers: 250,
    ),
    SubscriberSeries(
      year: '६',
      subscribers: 370,
    ),
    SubscriberSeries(
      year: '७',
      subscribers: 200,
    ),
    SubscriberSeries(
      year: '८',
      subscribers: 400,
    ),
  ];
  final List<SubscriberSeries> data1 = [
    SubscriberSeries(
      year: '१',
      subscribers: 1050,
    ),
    SubscriberSeries(
      year: '२',
      subscribers: 1300,
    ),
    SubscriberSeries(
      year: '३',
      subscribers: 1350,
    ),
    SubscriberSeries(
      year: '४',
      subscribers: 900,
    ),
    SubscriberSeries(
      year: '५',
      subscribers: 850,
    ),
    SubscriberSeries(
      year: '६',
      subscribers: 1100,
    ),
    SubscriberSeries(
      year: '७',
      subscribers: 800,
    ),
    SubscriberSeries(
      year: '८',
      subscribers: 1200,
    ),
  ];
  final List<SubscriberSeries> data2 = [
    SubscriberSeries(
      year: '१',
      subscribers: 1080,
    ),
    SubscriberSeries(
      year: '२',
      subscribers: 1150,
    ),
    SubscriberSeries(
      year: '३',
      subscribers: 1300,
    ),
    SubscriberSeries(
      year: '४',
      subscribers: 900,
    ),
    SubscriberSeries(
      year: '५',
      subscribers: 870,
    ),
    SubscriberSeries(
      year: '६',
      subscribers: 1000,
    ),
    SubscriberSeries(
      year: '७',
      subscribers: 700,
    ),
    SubscriberSeries(
      year: '८',
      subscribers: 1300,
    ),
  ];

  final List<PieSeries> dating = [
    PieSeries(
      year: "50.7%",
      subscribers: 50,
      barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 255, 0, 0)),
    ),
    PieSeries(
      year: "49.3%",
      subscribers: 49,
      barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 25, 0, 255)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("घरधुरी",
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
                UiHelper.verticalSpace(vspace: Spacing.medium),
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
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
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
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'घरधुरी जनसंख्या',
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
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
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
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'पुरुष जनसंख्या',
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
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 27, top: 20),
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.16,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
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
                          margin: const EdgeInsets.only(left: 10, top: 24),
                          child: Text(
                            'महिला जनसंख्या',
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
                          margin: const EdgeInsets.only(left: 18, top: 20),
                          height: UiHelper.displayHeight(context) * 0.03,
                          width: UiHelper.displayWidth(context) * 0.16,
                          decoration: BoxDecoration(
                            color: Color(0xFFC2A3FF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
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
                          margin: const EdgeInsets.only(left: 10, top: 24),
                          child: Text(
                            'अन्य जनसंख्या',
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
                SubscriberChart(
                  data: data,
                  data1: data1,
                  data2: data2,
                ),
                Container(
                  width: 100,
                  child: DataTable(
                    showCheckboxColumn: true,
                    columnSpacing: 9,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Text('Name',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                      DataColumn(
                          label: Text('House',
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
                      DataColumn(
                          label: Text('Total',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF357C8C)))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर १')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर २')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ३')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ४')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ५')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ६')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ७')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('वडा नम्बर ८')),
                        DataCell(Text('557')),
                        DataCell(Text('1098')),
                        DataCell(Text('1105')),
                        DataCell(Text('5')),
                        DataCell(Text('2580')),
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
