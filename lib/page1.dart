// ignore_for_file: unnecessary_new

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

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
      body: Column(children: [
        Expanded(
            child: SingleChildScrollView(
          child: Container(
              color: Color(0xFFF3F1F2),
              height: UiHelper.displayHeight(context) * 0.705,
              child: Column(
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
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Container(
                                  margin: const EdgeInsets.only(top: 3.5),
                                  child: Image.asset(
                                    'images/parichaya.jpg',
                                    width: UiHelper.displayWidth(context) * 0.1,
                                    height:
                                        UiHelper.displayHeight(context) * 0.033,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "नगरपालिका परिचय",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.027,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/thirteenth');
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
                                Image.asset(
                                  "images/7,.jpg",
                                  width: UiHelper.displayWidth(context) * 0.095,
                                  height:
                                      UiHelper.displayHeight(context) * 0.04,
                                  fit: BoxFit.fill,
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "नागरीक वडापत्र",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/fourteenth');
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
                                Image.asset(
                                  'images/homeyu.jpg',
                                  width: UiHelper.displayWidth(context) * 0.09,
                                  height:
                                      UiHelper.displayHeight(context) * 0.048,
                                  fit: BoxFit.fill,
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "कार्यक्रम",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/line23');
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
                                Image.asset(
                                  'images/whatsapp.jpg',
                                  width: UiHelper.displayWidth(context) * 0.07,
                                  height:
                                      UiHelper.displayHeight(context) * 0.035,
                                  fit: BoxFit.fill,
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "वडा जानकरी",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/twoyth');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16.5, bottom: 16.5, top: 11.5),
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
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Container(
                                  margin: const EdgeInsets.only(top: 8.5),
                                  child: Image.asset(
                                    'images/sewa.jpg',
                                    width:
                                        UiHelper.displayWidth(context) * 0.07,
                                    height:
                                        UiHelper.displayHeight(context) * 0.03,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "सेवा",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/line24');
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
                                  margin: const EdgeInsets.only(top: 5.5),
                                  child: Image.asset(
                                    "images/yogdan.jpg",
                                    width:
                                        UiHelper.displayWidth(context) * 0.11,
                                    height:
                                        UiHelper.displayHeight(context) * 0.033,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "योगदान",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/twenteenth');
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
                                Image.asset(
                                  'images/mayor.jpg',
                                  width: UiHelper.displayWidth(context) * 0.088,
                                  height:
                                      UiHelper.displayHeight(context) * 0.048,
                                  fit: BoxFit.fill,
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "नमस्ते मेयर",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                        title: Text(
                                            "Please Login! कृपया लगइन गर्नुहोस्!"),
                                        insetPadding: const EdgeInsets.all(60),
                                        actions: <Widget>[
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 30, bottom: 3),
                                            child: Row(
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color(0xFF004BA4),
                                                  ),
                                                  child: Text("Okay"),
                                                  onPressed: () {
                                                    // Perform logout here
                                                    Navigator.pushNamed(
                                                        context, '/twthing');
                                                  },
                                                ),
                                                UiHelper.horizontaSpace(
                                                    hspace: Spacing.xxlarge),
                                                UiHelper.horizontaSpace(
                                                    hspace: Spacing.large),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    widthFactor: 1,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color(0xFF004BA4),
                                                      ),
                                                      child: Text("Cancel"),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ))
                                              ],
                                            ),
                                          )
                                        ]);
                                  });
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
                                  margin: const EdgeInsets.only(top: 4.5),
                                  child: Image.asset(
                                    'images/sallah.jpg',
                                    width:
                                        UiHelper.displayWidth(context) * 0.075,
                                    height:
                                        UiHelper.displayHeight(context) * 0.033,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                UiHelper.verticalSpace(vspace: Spacing.small),
                                Text(
                                  "सल्लाह सुझाव",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.029,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/sixteenth');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Container(
                        color: Color(0xFFFFFFFF),
                        child: Align(
                          child: Text(
                            "खोकी लागेमा वा हाच्छिउँ गर्ने बेलामा कुहीनुले मुख    छोपेर मात्र गरौँ।",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: UiHelper.displayWidth(context) * 0.05,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFFFFFFF),
                        child: Align(
                          child: Text(
                            " COVID -19 को संक्रमण रोक्नका लागि नियमित समयमा हात धुनुहोस र अत्यावश्यक काम बाहेक\nघरमै बसि आफु पनि बचौँ र अरूलाई पनि बचाउ।",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: UiHelper.displayWidth(context) * 0.05,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFFFFFFF),
                        child: Align(
                          child: Text(
                            "बाहिर जाने बेला मास्क को प्रयोग गरौँ।",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: UiHelper.displayWidth(context) * 0.05,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          color: Color(0xFFFFFFFF),
                          child: Align(
                              child: Column(children: [
                            UiHelper.verticalSpace(vspace: Spacing.xlarge),
                            Text(
                              "तपाँईले लग–ईन गर्नु भएको छैन।",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: UiHelper.displayWidth(context) * 0.05,
                              ),
                            ),
                            UiHelper.verticalSpace(vspace: Spacing.xsmall),
                            Container(
                              width: UiHelper.displayWidth(context) * 0.44,
                              height: UiHelper.displayHeight(context) * 0.043,
                              margin: const EdgeInsets.only(
                                bottom: 6.8,
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(
                                        0xFF61C726), //background color of button
                                    //border width and color

                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                  ),
                                  child: Row(
                                    children: [
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.xlarge),
                                      Text(
                                        "लग–ईन गर्नु होस्",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Podkova",
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                UiHelper.displayWidth(context) *
                                                    0.038),
                                      ),
                                      UiHelper.horizontaSpace(
                                          hspace: Spacing.small),
                                      Container(
                                        width: UiHelper.displayWidth(context) *
                                            0.04,
                                        height:
                                            UiHelper.displayHeight(context) *
                                                0.02,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF61C726),
                                          border: Border.all(
                                              color: const Color(0xFFFFFFFFF),
                                              width: 1,
                                              style: BorderStyle.solid),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(13.8)),
                                        ),
                                        child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size:
                                                UiHelper.displayWidth(context) *
                                                    0.022,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/twthing');
                                  }),
                            ),
                          ])))
                    ],
                    options: CarouselOptions(
                      height: UiHelper.displayHeight(context) * 0.179,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOutCubicEmphasized,
                      pauseAutoPlayInFiniteScroll: true,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                  ),
                  Transform.rotate(
                    angle: _angle,
                    child: Container(
                      height: UiHelper.displayHeight(context) * 0.0163,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Stack(
                        children: [
                          // Cover image
                          Image(
                            image: AssetImage("images/cover.png"),
                            width: UiHelper.displayWidth(context) * 1,
                            fit: BoxFit.cover,
                          ),
                          // Man image
                          Positioned(
                            child: Row(
                              children: [
                                Container(
                                  width: UiHelper.displayWidth(context) * 0.12,
                                  height:
                                      UiHelper.displayHeight(context) * 0.059,
                                  margin: const EdgeInsets.only(
                                      bottom: 66, left: 25),
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "images/man.png",
                                        ),
                                        fit: BoxFit.cover),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(80)),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 16, top: 26),
                                  child: Text(
                                    "गोकर्णेश्वर संघीय लोकतान्त्रिक गणतन्त्र नेपालको राजधानी \nमात्र नभई देशको मध्य भागमा अवस्थित नेपालका १४ \nप्रशासनिक अञ्चलहरूद्वारा गठन गरिएका पाँच विकास \nक्षेत्रहरूमध्ये मध्य क्षेत्र (मध्यमञ्चल) को सदरमुकाम पनि हो। \nमध्य क्षेत्रमा बागमती, नारायणी र जनकपुर गरी तीन अञ्चल \nरहेका छन् । गोकर्णेश्वर बागमती अञ्चलमा पर्दछ । \nनेपाल पर्यटनको प्रवेशद्वारका रूपमा गोकर्णेश्वर देशको \nअर्थतन्त्रको केन्द्रविन्दु हो।",
                                    style: TextStyle(
                                      fontFamily: "SignikaNegative-Bold",
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.034,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          // Cover image
                          Image(
                            image: AssetImage("images/cover.png"),
                            width: UiHelper.displayWidth(context) * 1,
                            fit: BoxFit.cover,
                          ),
                          // Man image
                          Positioned(
                            child: Row(
                              children: [
                                Container(
                                  width: UiHelper.displayWidth(context) * 0.12,
                                  height:
                                      UiHelper.displayHeight(context) * 0.059,
                                  margin: const EdgeInsets.only(
                                      bottom: 66, left: 25),
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "images/woman.png",
                                        ),
                                        fit: BoxFit.cover),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(80)),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 16, top: 26),
                                  child: Text(
                                    "गोकर्णेश्वर संघीय लोकतान्त्रिक गणतन्त्र नेपालको राजधानी \nमात्र नभई देशको मध्य भागमा अवस्थित नेपालका १४ \nप्रशासनिक अञ्चलहरूद्वारा गठन गरिएका पाँच विकास \nक्षेत्रहरूमध्ये मध्य क्षेत्र (मध्यमञ्चल) को सदरमुकाम पनि हो। \nमध्य क्षेत्रमा बागमती, नारायणी र जनकपुर गरी तीन अञ्चल \nरहेका छन् । गोकर्णेश्वर बागमती अञ्चलमा पर्दछ । \nनेपाल पर्यटनको प्रवेशद्वारका रूपमा गोकर्णेश्वर देशको \nअर्थतन्त्रको केन्द्रविन्दु हो।",
                                    style: TextStyle(
                                      fontFamily: "SignikaNegative-Bold",
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: UiHelper.displayWidth(context) *
                                          0.034,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                    options: CarouselOptions(
                      height: UiHelper.displayHeight(context) * 0.24,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.linearToEaseOut,
                      pauseAutoPlayInFiniteScroll: true,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 400),
                      viewportFraction: 1,
                    ),
                  ),
                ],
              )),
        ))
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
