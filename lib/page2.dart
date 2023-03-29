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

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            child: Expanded(
                child: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Color(0xFFDDDDDD),
              child: Column(
                children: [
                  Stack(
                    children: [
                      // Cover image
                      Image(
                        image: AssetImage("images/cover.png"),
                        height: UiHelper.displayHeight(context) * 0.3,
                        width: UiHelper.displayWidth(context) * 1,
                        fit: BoxFit.cover,
                      ),
                      // Man image
                      Positioned(
                        top: 28,
                        left: 6,
                        child: Row(
                          children: [
                            Container(
                              height: UiHelper.displayHeight(context) * 0.28,
                              width: UiHelper.displayWidth(context) * 0.45,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "images/working.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 15, bottom: 40),
                                child: Text(
                                  "गोकर्णेश्वर संघीय लोकतान्त्रिक \nगणतन्त्र नेपालको राजधानी मात्र \nनभई देशको मध्य भागमा अवस्थित \nनेपालका १४ प्रशासनिक \nअञ्चलहरूद्वारा गठन गरिएका पाँच \nविकास क्षेत्रहरूमध्ये मध्य क्षेत्र \n(मध्यमञ्चल) को सदरमुकाम पनि हो। \nमध्य क्षेत्रमा बागमती, नारायणी र \nजनकपुर गरी तीन अञ्चल रहेका \nछन्।",
                                  style: TextStyle(
                                    fontFamily: "SignikaNegative-Bold",
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xFFFFFFFF),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.038,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Color(0xFFFFFFFF),
                  height: UiHelper.displayHeight(context) * 0.11,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/line14');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 13, left: 23),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("images/9.png"),
                                height: UiHelper.displayHeight(context) * 0.043,
                                width: UiHelper.displayWidth(context) * 0.085,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "स्वास्थ्य केन्द्र",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA3A3A3),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.035,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/line15');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 13, left: 31),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("images/10.png"),
                                height: UiHelper.displayHeight(context) * 0.043,
                                width: UiHelper.displayWidth(context) * 0.1,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 9),
                                child: Text(
                                  "कार्यालय",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA3A3A3),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.035,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/line16');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 13, left: 46),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("images/11.png"),
                                height: UiHelper.displayHeight(context) * 0.043,
                                width: UiHelper.displayWidth(context) * 0.085,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "शैक्षिक संस्था",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA3A3A3),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.035,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/line17');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 18.5, left: 46),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("images/12.png"),
                                height: UiHelper.displayHeight(context) * 0.037,
                                width: UiHelper.displayWidth(context) * 0.075,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "अन्य",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA3A3A3),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.035,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                  margin: const EdgeInsets.only(left: 28.25, top: 15),
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
                                margin: const EdgeInsets.only(top: 16.5),
                                child: Image.asset(
                                  'images/13.png',
                                  width: UiHelper.displayWidth(context) * 0.08,
                                  height:
                                      UiHelper.displayHeight(context) * 0.04,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.small),
                              Text(
                                "बोलपत्र सुचना",
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
                            Navigator.pushNamed(context, '/line18');
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
                                  'images/14.png',
                                  width: UiHelper.displayWidth(context) * 0.115,
                                  height:
                                      UiHelper.displayHeight(context) * 0.04,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.small),
                              Text(
                                "पर्यटकीय क्षेत्र",
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
                            Navigator.pushNamed(context, '/line19');
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
                                  'images/15.png',
                                  width: UiHelper.displayWidth(context) * 0.085,
                                  height:
                                      UiHelper.displayHeight(context) * 0.04,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.small),
                              Text(
                                "डिजिटल प्रोफाइल",
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
                            Navigator.pushNamed(context, '/twth');
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
                  margin: const EdgeInsets.only(left: 28.25, top: 15),
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
                                margin: const EdgeInsets.only(top: 25.5),
                                child: Image.asset(
                                  'images/16.png',
                                  width: UiHelper.displayWidth(context) * 0.095,
                                  height:
                                      UiHelper.displayHeight(context) * 0.025,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.medium),
                              Text(
                                "व्यापार",
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
                            Navigator.pushNamed(context, '/line20');
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
                                margin: const EdgeInsets.only(top: 22.5),
                                child: Image.asset(
                                  'images/17.png',
                                  width: UiHelper.displayWidth(context) * 0.089,
                                  height:
                                      UiHelper.displayHeight(context) * 0.026,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.small),
                              Text(
                                "स्थानीय उत्पादन",
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
                            Navigator.pushNamed(context, '/line21');
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
                                  'images/18.png',
                                  width: UiHelper.displayWidth(context) * 0.098,
                                  height:
                                      UiHelper.displayHeight(context) * 0.04,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              UiHelper.verticalSpace(vspace: Spacing.medium),
                              Text(
                                "छिटो सेवा",
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
                            Navigator.pushNamed(context, '/line22');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            UiHelper.verticalSpace(vspace: Spacing.medium),
            Container(
              alignment: Alignment.center,
              color: Color(0xFF004BA4),
              height: UiHelper.displayHeight(context) * 0.3,
              child: Column(
                children: [
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Text(
                    "सुचना पाटी",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                        fontSize: UiHelper.displayWidth(context) * 0.048),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Container(
                    width: UiHelper.displayWidth(context) * 0.9,
                    height: UiHelper.displayHeight(context) * 0.23,
                    decoration: BoxDecoration(
                      color: Color(0xFF004BA4),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(2.0)),
                      border: Border.all(
                          color: Color(0xFFE6E6E6),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: Column(children: [
                      UiHelper.verticalSpace(vspace: Spacing.small),
                      Text(
                        "स्वागत",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "SignikaNegative-Bold",
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFFFFFFF),
                          fontSize: UiHelper.displayWidth(context) * 0.045,
                        ),
                      ),
                      UiHelper.verticalSpace(vspace: Spacing.small),
                      Container(
                        width: UiHelper.displayWidth(context) * 0.78,
                        height: UiHelper.displayHeight(context) * 0.002,
                        color: Color(
                            0xFFC4C6C1), // The color to use when painting the line.
                        // The divider's height extent.
                      ),
                      UiHelper.verticalSpace(vspace: Spacing.small),
                      Text(
                        "तपाइ हाम्रो दुरी आझै कम गर्ने र क्रमश: सेवाहरु \nघरैबाट लिन सकिने अबस्थाका लागी यो एप \nप्रार्थना ल्यायेका छौ।",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "RussoOne",
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFFFFFFF),
                          fontSize: UiHelper.displayWidth(context) * 0.044,
                        ),
                      ),
                      UiHelper.verticalSpace(vspace: Spacing.medium),
                      Text(
                        "- गोकर्णेश्वर नगरपालिका",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "RussoOne",
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFFFFFFF),
                          fontSize: UiHelper.displayWidth(context) * 0.042,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        )))
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
          if (value == 2) Scaffold.of(context).openDrawer();
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
