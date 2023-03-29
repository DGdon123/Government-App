import 'dart:convert';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;
import 'package:prabidhi/ui_helper.dart';

import 'home.dart';

class SixteenthRoute extends StatefulWidget {
  const SixteenthRoute({Key? key}) : super(key: key);

  @override
  State<SixteenthRoute> createState() => SixteenthRouteState();
}

class SixteenthRouteState extends State<SixteenthRoute> {
  int currentIndex = 4;
  var size, height, width;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  double _angle = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: Builder(
        builder: (context) => Drawer(
          width: MediaQuery.of(context).size.width * 0.78,

          // ignore: sort_child_properties_last
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        // Cover image

                        Container(
                          height: UiHelper.displayHeight(context) * 0.25,
                          width: UiHelper.displayWidth(context) * 1,
                          child: Image.asset(
                            'images/hills.jpg',
                            colorBlendMode: BlendMode.darken,
                            filterQuality: FilterQuality.high,
                            width: UiHelper.displayWidth(context) * 0.8,
                            height: UiHelper.displayHeight(context) * 0.25,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Man image
                        Positioned(
                          top: 74,
                          left: 22,
                          child: Column(children: [
                            Container(
                              width: UiHelper.displayWidth(context) * 0.65,
                              height: UiHelper.displayHeight(context) * 0.05,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(
                                        0xFF004BA4), //background color of button
                                    //border width and color

                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius: BorderRadius.circular(1)),
                                  ),
                                  child: Row(
                                    children: [
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.xxlarge),
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.xxlarge),
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.xlarge),
                                      Text(
                                        "LOGIN",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "Podkova",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFFFFFFF),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.045,
                                        ),
                                      ),
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.xsmall),
                                      Icon(Icons.key_sharp,
                                          size: UiHelper.displayWidth(context) *
                                              0.048,
                                          color: Color(0xFFFFFFFF)),
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/twthing');
                                  }),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color(0xFF004BA4),
                    size: 26,
                  ),
                  title: const Text('गृहपृष्ठ',
                      style: TextStyle(
                          color: Color(0xFF004BA4),
                          fontFamily: "Cabin",
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  onTap: (() {
                    Navigator.pushNamed(context, '/second');
                  })),
              ListTile(
                  leading: const Icon(
                    Icons.notifications_rounded,
                    color: Color(0xFF004BA4),
                    size: 26,
                  ),
                  title: const Text('सूचनाहरू',
                      style: TextStyle(
                          color: Color(0xFF004BA4),
                          fontFamily: "Cabin",
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  onTap: (() {
                    Navigator.pushNamed(context, '/twentyoneth');
                  })),
              ListTile(
                  leading: const Icon(
                    Icons.question_mark_rounded,
                    color: Color(0xFF004BA4),
                    size: 26,
                  ),
                  title: const Text('सल्लाह सुझाव',
                      style: TextStyle(
                          color: Color(0xFF004BA4),
                          fontFamily: "Cabin",
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  onTap: (() {
                    Navigator.pushNamed(context, '/sixteenth');
                  })),
              ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Color(0xFF004BA4),
                    size: 26,
                  ),
                  title: const Text('सेटिङ',
                      style: TextStyle(
                          color: Color(0xFF004BA4),
                          fontFamily: "Cabin",
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  onTap: (() {
                    Navigator.pushNamed(context, '/twentytwoth');
                  })),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text("प्रोफाइल",
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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(children: [
        Container(
            width: UiHelper.displayWidth(context) * 1,
            child: CustomPaint(
              painter: CurvePainter(),
              child: Column(
                children: [
                  Text(
                    "प्रख्यात गुरुङ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: height / 250,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                        fontSize: width * 0.08),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.medium),
                  Container(
                    height: 437,
                    width: UiHelper.displayWidth(context) * 0.83,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                    child: Column(
                      children: [
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.location_on_rounded,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'ठेगाना',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "कुमारीटोल, चक्रपथ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiHelper.displayHeight(context) * 0.000090,
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.mail_rounded,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'इ-मेल ठेगाना',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "dipeshgurung797@gmail.com",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiHelper.displayHeight(context) * 0.000090,
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.phone_rounded,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'मोबाइल नम्बर',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "9813090018",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiHelper.displayHeight(context) * 0.000090,
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.person,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'लिङ्ग',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "पुरुष",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiHelper.displayHeight(context) * 0.000090,
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.face,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'उमेर',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "२१",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiHelper.displayHeight(context) * 0.000090,
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Row(
                          children: [
                            UiHelper.horizontaSpace(hspace: Spacing.large),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.calendar_month_rounded,
                                  size: UiHelper.displayWidth(context) * 0.065,
                                  color: Color(0xFF0062DE),
                                )),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'जन्म मिति',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontFamily: "KumbhSans",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.043),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                UiHelper.horizontaSpace(
                                    hspace: Spacing.xxlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                                UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                                Align(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width * 0.65,
                                    height: height * 0.03,
                                    child: Text(
                                      "२०५८/०४/०२",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontFamily: "SignikaNegative-Bold",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA6AEB0),
                                          fontSize:
                                              UiHelper.displayWidth(context) *
                                                  0.04),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ])),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF3F1F2),
        iconSize: 32,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF004BA4),
        unselectedItemColor: Color(0xFF222222),
        selectedFontSize: 14,
        onTap: (value) {
          if (value == 0) Navigator.pushNamed(context, '/second');
          if (value == 1) Navigator.pushNamed(context, '/fifteenth');
          if (value == 2) scaffoldKey.currentState?.openDrawer();
          if (value == 3) Navigator.pushNamed(context, '/nineteenth');
          if (value == 4) Navigator.pushNamed(context, '/twentyth');
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "गृहपृष्ठ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: "राजपत्र",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "मेनु",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: "सुचना",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "प्रोफाइल",
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF004BA4);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.36);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2.8, size.width, size.height * 0.36);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
