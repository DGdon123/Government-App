import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';
import 'ui_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SeventhScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Container(
            color: Colors.transparent,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 210),
                    child: Image.asset(
                      'images/one.png',
                      width: UiHelper.displayWidth(context) * 0.35,
                      colorBlendMode: BlendMode.darken,
                      filterQuality: FilterQuality.high,
                      height: UiHelper.displayHeight(context) * 0.15,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 39),
                    child: Text(
                      "डिजिटल",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ZenKakuGothicAntique",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF004BA4),
                        fontSize: UiHelper.displayWidth(context) * 0.115,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.72,
                    child: Text(
                      "पालिका",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ZenKakuGothicAntique",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF004BA4),
                        fontSize: UiHelper.displayWidth(context) * 0.088,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 200),
                    child: Text(
                      "Powered by:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "KumbhSans",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF222222),
                        fontSize: UiHelper.displayWidth(context) * 0.042,
                      ),
                    ),
                  ),
                  Image.asset(
                    'images/download.png',
                    width: UiHelper.displayWidth(context) * 0.42,
                    height: UiHelper.displayHeight(context) * 0.07,
                    fit: BoxFit.fill,
                  ),
                ])));
  }
}
