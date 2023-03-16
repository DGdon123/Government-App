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

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
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
        title: const Text("डिजिटल प्रोफाइल",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 20,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xFFFFFFFF),
                size: 25,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UiHelper.verticalSpace(vspace: Spacing.medium),
                    Container(
                      child: Text(
                        "ब्याँस गाऊँपालिका",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "KumbhSans",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF004BA4),
                            fontSize: UiHelper.displayWidth(context) * 0.058),
                      ),
                    ),
                  ],
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "जम्मा घरधुरी : ४२२१\nजनसंख्या: २०८३०\nमहिला जनसंख्या: १०२२८\nपुरुष जनसंख्या: १०५१८\nअन्य: १९",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: UiHelper.displayHeight(context) * 0.0019,
                        fontSize: UiHelper.displayWidth(context) * 0.042,
                        fontFamily: "Mulish",
                        color: Color(0xFF2222222),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 55, bottom: 18),
                                  height:
                                      UiHelper.displayHeight(context) * 0.02,
                                  width: UiHelper.displayWidth(context) * 0.039,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 17, 0, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80.0)),
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
                                      left: 55, bottom: 18),
                                  height:
                                      UiHelper.displayHeight(context) * 0.02,
                                  width: UiHelper.displayWidth(context) * 0.039,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80.0)),
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
                                      left: 55, bottom: 18),
                                  height:
                                      UiHelper.displayHeight(context) * 0.02,
                                  width: UiHelper.displayWidth(context) * 0.039,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 218, 217, 217),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80.0)),
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
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 15.5),
                                  child: Text(
                                    'महिला जनसंख्या',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        letterSpacing: 0.3,
                                        fontFamily: "KumbhSans",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF222222),
                                        fontSize:
                                            UiHelper.displayWidth(context) *
                                                0.036),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 15.5),
                                  child: Text(
                                    'पुरुष जनसंख्या',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        letterSpacing: 0.3,
                                        fontFamily: "KumbhSans",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF222222),
                                        fontSize:
                                            UiHelper.displayWidth(context) *
                                                0.036),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 15.5),
                                  child: Text(
                                    'अन्य',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        letterSpacing: 0.3,
                                        fontFamily: "KumbhSans",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF222222),
                                        fontSize:
                                            UiHelper.displayWidth(context) *
                                                0.036),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
                PieCharting(dating: dating),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Text(
                  'वडा नम्बर',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: UiHelper.displayHeight(context) * 0.0019,
                    fontSize: UiHelper.displayWidth(context) * 0.045,
                    fontFamily: "Mulish",
                    color: Color(0xFF2222222),
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                                offset: Offset(0, 0),
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
                SubscriberChart(
                  data: data,
                  data1: data1,
                  data2: data2,
                ),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF004BA4),
                  height: UiHelper.displayHeight(context) * 0.1,
                  child: Text(
                    "ब्यास गाउँपालिकाका तथन्याकहरु\n (०७५/०७६ को डिजिटल सर्बेक्स्यान्ड अनुसार)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w200,
                      color: Color(0xFFFFFFFF),
                      fontSize: UiHelper.displayWidth(context) * 0.052,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.5, top: 10.5),
                      child: Row(
                        children: [
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/design.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "घरधुरी",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/onthing');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      'images/population.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "जनसंख्या",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line2');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/pray.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.105,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "धर्म",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line1');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/speaking.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "मातृभाषा",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/fnthing');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.5, top: 10.5),
                      child: Row(
                        children: [
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 13),
                                    child: Image.asset(
                                      'images/toilet.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "शौचालयको उपयोग",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.027,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line5');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 17),
                                    child: Image.asset(
                                      'images/water.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.075,
                                      height: UiHelper.displayHeight(context) *
                                          0.034,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "पिउनेपानीको प्रयोग",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line4');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 17),
                                    child: Image.asset(
                                      'images/fire.png',
                                      width:
                                          UiHelper.displayWidth(context) * 0.06,
                                      height: UiHelper.displayHeight(context) *
                                          0.035,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "इन्धनको प्रार्थना",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line3');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 14),
                                    child: Image.asset(
                                      'images/bulb.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "बिजुलीको उपयोग",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line10');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.5, top: 10.5),
                      child: Row(
                        children: [
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/course.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "जागरूकता",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line7');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/disabled.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "असक्षमता",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line6');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'images/rice.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "वृद्धि",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line9');
                              },
                            ),
                          ),
                          Container(
                            width: UiHelper.displayWidth(context) * 0.21,
                            height: UiHelper.displayHeight(context) * 0.11,
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(13)),
                                //background color of button
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 18),
                                    child: Image.asset(
                                      'images/tools.png',
                                      width: UiHelper.displayWidth(context) *
                                          0.088,
                                      height: UiHelper.displayHeight(context) *
                                          0.04,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  UiHelper.verticalSpace(vspace: Spacing.small),
                                  Text(
                                    "सडक",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Roboto-Regular",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7C7C7C),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.029,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/line8');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
