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

class FifteenthRoute extends StatefulWidget {
  const FifteenthRoute({Key? key}) : super(key: key);

  @override
  State<FifteenthRoute> createState() => _FifteenthRouteState();
}

class _FifteenthRouteState extends State<FifteenthRoute> {
  int currentIndex = 1;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  FlutterSecureStorage storage = FlutterSecureStorage();
  var isLoading = true;
  List<PanjikaranElement> samplePosts = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text('सूचनाहरू',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Center(
                    child: Icon(
                      Icons.notifications_off_rounded,
                      size: UiHelper.displayWidth(context) * 0.38,
                      color: Color(0xFF004BA4),
                    ),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.small),
                  Text(
                    "कुनै सूचना छैन",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Roboto-Regular",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222222),
                      fontSize: UiHelper.displayWidth(context) * 0.06,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
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
