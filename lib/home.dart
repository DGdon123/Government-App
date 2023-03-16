// ignore_for_file: unnecessary_new

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/page3.dart';
import 'package:prabidhi/page4.dart';
import 'package:prabidhi/ui_helper.dart';
import 'dart:math' as math;

import 'package:toggle_switch/toggle_switch.dart';

import 'page1.dart';
import 'page2.dart';

class SeventhScreen extends StatefulWidget {
  const SeventhScreen({Key? key}) : super(key: key);

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  int _selectedIndex = 0;

  void _onPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TabBar get _tabBar => TabBar(
        labelPadding: const EdgeInsets.only(top: 2),
        labelStyle: TextStyle(
            fontSize: UiHelper.displayWidth(context) * 0.037,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0E0E0E)),
        labelColor: Color(0xFF0E0E0E),
        unselectedLabelColor: Color(0xFF4D4D4D),
        indicatorColor: Color(0xFF004BA4),
        tabs: [
          Tab(text: 'जनता कक्ष'),
          Tab(text: 'जानकारी'),
          Tab(text: 'प्रतिनिधि'),
          Tab(text: 'कर्मचारी'),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF004BA4),
            iconTheme: const IconThemeData(
              size: 30, //change size on your need
              color: Color.fromARGB(255, 0, 0, 0), //change color on your need
            ),
            title: Text(
              "ब्याँस गाऊँपालिका",
              textAlign: TextAlign.left,
              style: TextStyle(
                  height: 1,
                  fontFamily: "Roboto-Regular",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontSize: 20),
            ),
            leading: Builder(builder: (BuildContext context) {
              return Container(
                width: 500,
                height: 20,
                margin: const EdgeInsets.only(
                    left: 8.6, bottom: 8, top: 7, right: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                padding: const EdgeInsets.all(7),
                child: ClipRRect(
                  // ignore: sort_child_properties_last
                  child: Image.asset(
                    "images/one.png",
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Color(0xFFFFFFFF), //<-- SEE HERE
                child: _tabBar,
              ),
            ),
          ),
          drawer: Drawer(
            width: MediaQuery.of(context).size.width * 0.77,

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
                                          borderRadius:
                                              BorderRadius.circular(1)),
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
                                            size:
                                                UiHelper.displayWidth(context) *
                                                    0.048,
                                            color: Color(0xFFFFFFFF)),
                                      ],
                                    ),
                                    onPressed: () {}),
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
          body: TabBarView(children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ])),
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

    path.moveTo(0, size.height * 0.21);
    path.quadraticBezierTo(
        size.width / 2, size.height / 9, size.width, size.height * 0.21);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
