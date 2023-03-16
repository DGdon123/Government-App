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

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          child: Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
        Container(
            child: Column(children: [
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
            ],
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
                UiHelper.verticalSpace(vspace: Spacing.medium),
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
                UiHelper.verticalSpace(vspace: Spacing.medium),
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
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
          ],
        ),
      ]))))
    ]));
  }
}
