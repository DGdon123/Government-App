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

class Wada1 extends StatefulWidget {
  const Wada1({Key? key}) : super(key: key);

  @override
  State<Wada1> createState() => _Wada1State();
}

class _Wada1State extends State<Wada1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          child: Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
        UiHelper.verticalSpace(vspace: Spacing.small),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
                  ),
                ),
                UiHelper.verticalSpace(vspace: Spacing.medium),
              ],
            ),
            UiHelper.horizontaSpace(hspace: Spacing.large),
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
                    fontSize: UiHelper.displayWidth(context) * 0.038,
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
                    fontSize: UiHelper.displayWidth(context) * 0.05,
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
