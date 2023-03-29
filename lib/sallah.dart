// ignore_for_file: unnecessary_new

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;
import 'package:prabidhi/ui_helper.dart';

import 'home.dart';
import 'models/panjikaran.dart';
import 'models/sewamodel.dart';

class FourteenthScreen extends StatefulWidget {
  const FourteenthScreen({Key? key}) : super(key: key);

  @override
  State<FourteenthScreen> createState() => _FourteenthScreenState();
}

class _FourteenthScreenState extends State<FourteenthScreen> {
  int currentIndex = 1;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  FlutterSecureStorage storage = FlutterSecureStorage();
  var isLoading = true;
  List<PanjikaranElement> samplePosts = [];
  var name = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var message = TextEditingController();

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
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Color(0xFF004BA4),
        title: const Text('सल्लाह सुझाव',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.78,

        // ignore: sort_child_properties_last
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
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
                            UiHelper.horizontaSpace(hspace: Spacing.xxlarge),
                            UiHelper.horizontaSpace(hspace: Spacing.xxlarge),
                            UiHelper.horizontaSpace(hspace: Spacing.xlarge),
                            Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Podkova",
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.045,
                              ),
                            ),
                            UiHelper.horizontaSpace(hspace: Spacing.xsmall),
                            Icon(Icons.key_rounded,
                                size: UiHelper.displayWidth(context) * 0.055,
                                color: Color(0xFFFFFFFF)),
                          ],
                        ),
                        onPressed: () {}),
                  ),
                  Image.asset(
                    'images/hills.jpg',
                    colorBlendMode: BlendMode.darken,
                    filterQuality: FilterQuality.high,
                    width: UiHelper.displayWidth(context) * 0.8,
                    height: UiHelper.displayHeight(context) * 0.25,
                    fit: BoxFit.cover,
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
                  Navigator.pushNamed(context, '/fourth');
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
                  Navigator.pushNamed(context, '/seventh');
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
                  Navigator.pushNamed(context, '/eleventh');
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
                  Navigator.pushNamed(context, '/tenth');
                })),
          ],
        ),
      ),
      body: Column(children: [
        Container(
            child: Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              UiHelper.verticalSpace(vspace: Spacing.xsmall),
              Stack(
                children: [
                  // Cover image

                  Image(
                    image: AssetImage("images/cover.png"),
                    width: UiHelper.displayWidth(context) * 0.98,
                    height: UiHelper.displayHeight(context) * 0.27,
                    fit: BoxFit.cover,
                  ),

                  // Man image
                  Positioned(
                    top: 22,
                    left: 10,
                    child: Row(children: [
                      Text(
                        "गोकर्णेश्वर संघीय लोकतान्त्रिक गणतन्त्र नेपालको राजधानी \nमात्र नभई देशको मध्य भागमा अवस्थित नेपालका १४ \nप्रशासनिक अञ्चलहरूद्वारा गठन गरिएका पाँच विकास \nक्षेत्रहरूमध्ये मध्य क्षेत्र (मध्यमञ्चल) को सदरमुकाम पनि हो। \nमध्य क्षेत्रमा बागमती, नारायणी र जनकपुर गरी तीन अञ्चल \nरहेका छन् । गोकर्णेश्वर बागमती अञ्चलमा पर्दछ । \nनेपाल पर्यटनको प्रवेशद्वारका रूपमा गोकर्णेश्वर देशको \nअर्थतन्त्रको केन्द्रविन्दु हो।",
                        style: TextStyle(
                          fontFamily: "SignikaNegative-Bold",
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                          fontSize: UiHelper.displayWidth(context) * 0.04,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.small),
              Row(
                children: [
                  UiHelper.horizontaSpace(hspace: Spacing.medium),
                  Text(
                    "Prabidhi App मध्य भागमा अवस्थित नेपालका १४ प्रवेशद्वारका \nरूपमा ब्याँस देशको अर्थतन्त्रको केन्द्रविन्दु हो।",
                    style: TextStyle(
                      fontFamily: "SignikaNegative-Bold",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF222222),
                      fontSize: UiHelper.displayWidth(context) * 0.038,
                    ),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.small),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: UiHelper.displayHeight(context) * 0.06,
                      width: UiHelper.displayWidth(context) * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7E7E7),
                        border: Border.all(
                          color: const Color(0xFFE7E7E7),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'नाम',
                              style: TextStyle(
                                fontFamily: "SignikaNegative-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                fontSize: UiHelper.displayWidth(context) * 0.04,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: TextField(
                                controller: name,
                                maxLines: 1,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(5),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                ),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "ZenKakuGothicAntique",
                                  fontSize:
                                      UiHelper.displayWidth(context) * 0.042,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.xsmall),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: UiHelper.displayHeight(context) * 0.06,
                      width: UiHelper.displayWidth(context) * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7E7E7),
                        border: Border.all(
                          color: const Color(0xFFE7E7E7),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'इ-मेल',
                              style: TextStyle(
                                fontFamily: "SignikaNegative-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                fontSize: UiHelper.displayWidth(context) * 0.04,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: TextField(
                                controller: email,
                                maxLines: 1,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                ),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "ZenKakuGothicAntique",
                                  fontSize:
                                      UiHelper.displayWidth(context) * 0.042,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.xsmall),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: UiHelper.displayHeight(context) * 0.06,
                      width: UiHelper.displayWidth(context) * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7E7E7),
                        border: Border.all(
                          color: const Color(0xFFE7E7E7),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'सम्पर्क',
                              style: TextStyle(
                                fontFamily: "SignikaNegative-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                fontSize: UiHelper.displayWidth(context) * 0.04,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: TextField(
                                controller: phone,
                                maxLines: 1,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                ),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "ZenKakuGothicAntique",
                                  fontSize:
                                      UiHelper.displayWidth(context) * 0.042,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.xsmall),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: UiHelper.displayHeight(context) * 0.06,
                      width: UiHelper.displayWidth(context) * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7E7E7),
                        border: Border.all(
                          color: const Color(0xFFE7E7E7),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'सन्देश',
                              style: TextStyle(
                                fontFamily: "SignikaNegative-Regular",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                fontSize: UiHelper.displayWidth(context) * 0.04,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: TextField(
                                controller: message,
                                maxLines: 1,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                  ),
                                ),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "ZenKakuGothicAntique",
                                  fontSize:
                                      UiHelper.displayWidth(context) * 0.042,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UiHelper.verticalSpace(vspace: Spacing.medium),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: UiHelper.displayHeight(context) * 0.05,
                      width: UiHelper.displayWidth(context) * 0.42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(
                              0xFFC0E8A9), //background color of button
                          //border width and color

                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: Text(
                          "पठाउनुहोस्",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "ZenKakuGothicAntique",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF4FFE6),
                            fontSize: UiHelper.displayWidth(context) * 0.038,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ))
      ]),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: Stack(
          children: [
            // Cover image

            Container(
              height: UiHelper.displayHeight(context) * 0.075,
              width: UiHelper.displayWidth(context) * 1,
              color: Color(0xFFFFFFFF),
            ),

            // Man image
            Positioned(
              top: 8,
              left: 12,
              child: Row(children: [
                Image.asset(
                  'images/download.png',
                  width: UiHelper.displayWidth(context) * 0.34,
                  height: UiHelper.displayHeight(context) * 0.058,
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25, bottom: 3),
                  child: Column(children: [
                    Text(
                      "थप जानकारीको लागि",
                      style: TextStyle(
                        fontFamily: "SignikaNegative-Bold",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2222222),
                        fontSize: UiHelper.displayWidth(context) * 0.038,
                      ),
                    ),
                    Text(
                      "www.softechfoundation.com",
                      style: TextStyle(
                        fontFamily: "SignikaNegative-Bold",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2222222),
                        fontSize: UiHelper.displayWidth(context) * 0.04,
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
