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

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  double _angle = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        Container(
            child: Column(children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFF004BA4),
            width: UiHelper.displayWidth(context) * 1,
            height: UiHelper.displayHeight(context) * 0.104,
            child: Text(
              "प्रतिक्षा सम्पर्कका निम्ती यहाले रोजनुभयेको\n प्रतिनिधिको तस्बिरमा दबाउनुहोस।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "SignikaNegative-Bold",
                fontWeight: FontWeight.w200,
                color: Color(0xFFFFFFFF),
                fontSize: UiHelper.displayWidth(context) * 0.043,
              ),
            ),
          ),
          UiHelper.verticalSpace(vspace: Spacing.medium),
          Row(
            children: [
              UiHelper.horizontaSpace(hspace: Spacing.medium),
              Container(
                width: UiHelper.displayWidth(context) * 0.26,
                height: UiHelper.displayHeight(context) * 0.0028,
                color: Color(
                    0xFFC4C6C1), // The color to use when painting the line.
                // The divider's height extent.
              ),
              Container(
                width: UiHelper.displayWidth(context) * 0.42,
                height: UiHelper.displayHeight(context) * 0.045,
                decoration: BoxDecoration(
                  color: Color(0xFF004BA4),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                alignment: Alignment.center,
                child: Text(
                  "नगरपालिका प्रतिनिधि",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFFFFFFFF),
                    fontSize: UiHelper.displayWidth(context) * 0.038,
                  ),
                ),
              ),
              Container(
                width: UiHelper.displayWidth(context) * 0.27,
                height: UiHelper.displayHeight(context) * 0.0028,
                color: Color(
                    0xFFC4C6C1), // The color to use when painting the line.
                // The divider's height extent.
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  UiHelper.verticalSpace(vspace: Spacing.medium),
                  Container(
                    width: UiHelper.displayWidth(context) * 0.18,
                    height: UiHelper.displayHeight(context) * 0.09,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            "images/man.png",
                          ),
                          fit: BoxFit.cover),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: const BorderRadius.all(Radius.circular(80)),
                    ),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Text(
                    "बिनोद चौधरी",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w200,
                      color: Color(0xFF222222),
                      fontSize: UiHelper.displayWidth(context) * 0.035,
                    ),
                  ),
                  Text(
                    "नगर प्रमुख",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: UiHelper.displayHeight(context) * 0.00118,
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w200,
                      color: Color(0xFF004BA4),
                      fontSize: UiHelper.displayWidth(context) * 0.044,
                    ),
                  ),
                ],
              ),
              UiHelper.horizontaSpace(hspace: Spacing.xxlarge),
              Column(
                children: [
                  UiHelper.verticalSpace(vspace: Spacing.medium),
                  Container(
                    width: UiHelper.displayWidth(context) * 0.18,
                    height: UiHelper.displayHeight(context) * 0.09,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            "images/woman.png",
                          ),
                          fit: BoxFit.cover),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: const BorderRadius.all(Radius.circular(80)),
                    ),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Text(
                    "प्रीति रेग्मी",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w200,
                      color: Color(0xFF222222),
                      fontSize: UiHelper.displayWidth(context) * 0.035,
                    ),
                  ),
                  Text(
                    "नगर उपप्रमुख",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: UiHelper.displayHeight(context) * 0.00118,
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w200,
                      color: Color(0xFF004BA4),
                      fontSize: UiHelper.displayWidth(context) * 0.044,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ])),
        UiHelper.verticalSpace(vspace: Spacing.large),
        Row(
          children: [
            UiHelper.horizontaSpace(hspace: Spacing.medium),
            Container(
              width: UiHelper.displayWidth(context) * 0.3,
              height: UiHelper.displayHeight(context) * 0.0028,
              color:
                  Color(0xFFC4C6C1), // The color to use when painting the line.
              // The divider's height extent.
            ),
            Container(
              width: UiHelper.displayWidth(context) * 0.32,
              height: UiHelper.displayHeight(context) * 0.045,
              decoration: BoxDecoration(
                color: Color(0xFF004BA4),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              ),
              alignment: Alignment.center,
              child: Text(
                "कार्यपालिका",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "SignikaNegative-Bold",
                  fontWeight: FontWeight.w200,
                  color: Color(0xFFFFFFFF),
                  fontSize: UiHelper.displayWidth(context) * 0.038,
                ),
              ),
            ),
            Container(
              width: UiHelper.displayWidth(context) * 0.33,
              height: UiHelper.displayHeight(context) * 0.0028,
              color:
                  Color(0xFFC4C6C1), // The color to use when painting the line.
              // The divider's height extent.
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                UiHelper.verticalSpace(vspace: Spacing.medium),
                Container(
                  width: UiHelper.displayWidth(context) * 0.18,
                  height: UiHelper.displayHeight(context) * 0.09,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          "images/man.png",
                        ),
                        fit: BoxFit.cover),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.all(Radius.circular(80)),
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Text(
                  "बिनोद चौधरी",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF222222),
                    fontSize: UiHelper.displayWidth(context) * 0.035,
                  ),
                ),
                Text(
                  "नगर प्रमुख",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: UiHelper.displayHeight(context) * 0.00118,
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF004BA4),
                    fontSize: UiHelper.displayWidth(context) * 0.044,
                  ),
                ),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.xxlarge),
            Column(
              children: [
                UiHelper.verticalSpace(vspace: Spacing.medium),
                Container(
                  width: UiHelper.displayWidth(context) * 0.18,
                  height: UiHelper.displayHeight(context) * 0.09,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          "images/man.png",
                        ),
                        fit: BoxFit.cover),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.all(Radius.circular(80)),
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Text(
                  "बिनोद चौधरी",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF222222),
                    fontSize: UiHelper.displayWidth(context) * 0.035,
                  ),
                ),
                Text(
                  "नगर प्रमुख",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: UiHelper.displayHeight(context) * 0.00118,
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF004BA4),
                    fontSize: UiHelper.displayWidth(context) * 0.044,
                  ),
                ),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.xxlarge),
            Column(
              children: [
                UiHelper.verticalSpace(vspace: Spacing.medium),
                Container(
                  width: UiHelper.displayWidth(context) * 0.18,
                  height: UiHelper.displayHeight(context) * 0.09,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          "images/woman.png",
                        ),
                        fit: BoxFit.cover),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.all(Radius.circular(80)),
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.small),
                Text(
                  "प्रीति रेग्मी",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF222222),
                    fontSize: UiHelper.displayWidth(context) * 0.035,
                  ),
                ),
                Text(
                  "नगर उपप्रमुख",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: UiHelper.displayHeight(context) * 0.00118,
                    fontFamily: "SignikaNegative-Bold",
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF004BA4),
                    fontSize: UiHelper.displayWidth(context) * 0.044,
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF3F1F2),
        iconSize: 32,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF004BA4),
        unselectedItemColor: Color(0xFF222222),
        selectedFontSize: 14,
        onTap: (value) {
          if (value == 0) Navigator.pushNamed(context, '/seventeenth');
          if (value == 1) Navigator.pushNamed(context, '/fifteenth');
          if (value == 2) Scaffold.of(context).openDrawer();
          if (value == 3) Navigator.pushNamed(context, '/eighth');
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
