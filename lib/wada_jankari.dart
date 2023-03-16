import 'dart:convert';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/page3.dart';
import 'package:prabidhi/page4.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:prabidhi/wada1.dart';
import 'package:prabidhi/wada2.dart';
import 'package:prabidhi/wada3.dart';
import 'package:prabidhi/wada4.dart';
import 'package:prabidhi/wada5.dart';
import 'package:prabidhi/wada6.dart';
import 'package:prabidhi/wada7.dart';
import 'package:prabidhi/wada8.dart';
import 'page1.dart';
import 'page2.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

class SeventeenthScreen extends StatefulWidget {
  const SeventeenthScreen({Key? key}) : super(key: key);

  @override
  State<SeventeenthScreen> createState() => SeventeenthScreenState();
}

class SeventeenthScreenState extends State<SeventeenthScreen> {
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
            fontSize: UiHelper.displayHeight(context) * 0.02,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0E0E0E)),
        labelColor: Color(0xFF004BA4),
        unselectedLabelColor: Color(0xFF222222),
        indicatorColor: Color(0xFF004BA4),
        isScrollable: true,
        tabs: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर १'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर २'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ३'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ४'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ५'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ६'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ७'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tab(text: 'वडा नम्बर ८'),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF004BA4),
            iconTheme: const IconThemeData(
              size: 30, //change size on your need
              color: Color(0xFFFFFFFF), //change color on your need
            ),
            title: Text(
              "वडा जानकरी",
              textAlign: TextAlign.left,
              style: TextStyle(
                  height: 1,
                  fontFamily: "Roboto-Regular",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontSize: 20),
            ),
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
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Color(0xFFFFFFFF),
                child: SingleChildScrollView(
                  // wrap the TabBar with SingleChildScrollView
                  scrollDirection:
                      Axis.horizontal, // set horizontal scroll direction
                  child: _tabBar,
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Wada1(),
            Wada2(),
            Wada3(),
            Wada4(),
            Wada5(),
            Wada6(),
            Wada7(),
            Wada8(),
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
