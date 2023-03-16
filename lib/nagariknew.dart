import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/ui_helper.dart';
import 'dart:math' as math;

import 'package:toggle_switch/toggle_switch.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF004BA4);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.224);
    path.quadraticBezierTo(
        size.width / 2, size.height / 14, size.width, size.height * 0.224);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ThirteenthScreen extends StatefulWidget {
  const ThirteenthScreen({Key? key}) : super(key: key);

  @override
  State<ThirteenthScreen> createState() => _ThirteenthScreenState();
}

class _ThirteenthScreenState extends State<ThirteenthScreen> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  double _angle = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFFFFFFFF),
                size: 25,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            );
          },
        ),
        backgroundColor: Color(0xFF004BA4),
        title: const Text('नागरीक वडापत्र',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
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
      body: Column(children: [
        Expanded(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
          Container(
            color: Color(0xFF004BA4),
            width: UiHelper.displayWidth(context) * 1,
            height: UiHelper.displayHeight(context) * 0.08,
            alignment: Alignment.center,
            child: Text(
              "जानकारीका लागि आफुले रोजेको सेवा बटनमा दबाउनुहोस्।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "SignikaNegative-Bold",
                fontWeight: FontWeight.w200,
                color: Color(0xFFFFFFFF),
                fontSize: UiHelper.displayWidth(context) * 0.043,
              ),
            ),
          ),
          SizedBox(
            height: UiHelper.displayHeight(context) * 0.023,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 28.25),
                child: Row(
                  children: [
                    Container(
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 14.5),
                              child: Image.asset(
                                'images/2.png',
                                width: UiHelper.displayWidth(context) * 0.11,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "घर | जग्गा | बाटो",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/fourth');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 21),
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20.5),
                              child: Image.asset(
                                'images/6.png',
                                width: UiHelper.displayWidth(context) * 0.09,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "पञ्जीकरण",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/seventh');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 21),
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 19.5),
                              child: Image.asset(
                                'images/1.png',
                                width: UiHelper.displayWidth(context) * 0.115,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "सेवा | सुविधा",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sixth');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 28.25, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 9.5),
                              child: Image.asset(
                                'images/8.png',
                                width: UiHelper.displayWidth(context) * 0.11,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "शिक्षा | स्वास्थ्य | विदेश",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/tenth');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 21),
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 21.5),
                              child: Image.asset(
                                'images/3.png',
                                width: UiHelper.displayWidth(context) * 0.115,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "कर | कानुन",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/nineth');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 21),
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10.2),
                              child: Image.asset(
                                'images/5.png',
                                width: UiHelper.displayWidth(context) * 0.101,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "ब्यापार | व्यवसाय | उद्योग",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/eighth');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 28.25, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 24.5),
                              child: Image.asset(
                                'images/4.png',
                                width: UiHelper.displayWidth(context) * 0.09,
                                height: UiHelper.displayHeight(context) * 0.04,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "अन्य",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/tweleventh');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 21),
                      width: UiHelper.displayWidth(context) * 0.25,
                      height: UiHelper.displayHeight(context) * 0.14,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(18)),
                          //background color of button
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 14.5),
                              child: Image.asset(
                                'images/7.png',
                                width: UiHelper.displayWidth(context) * 0.098,
                                height: UiHelper.displayHeight(context) * 0.045,
                                fit: BoxFit.fill,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.small),
                            Text(
                              "बसोबास | बसाँईसराई",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222222),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.035,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/eleventh');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]))))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF3F1F2),
        iconSize: 32,
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
