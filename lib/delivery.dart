import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prabidhi/ui_helper.dart';
import 'dart:math' as math;

import 'package:toggle_switch/toggle_switch.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF004BA4);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.224);
    path.quadraticBezierTo(
        size.width / 2, size.height / 14, size.width, size.height * 0.224);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
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
        title: const Text("छिटो सेवा",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      color: Color(0xFFEAF2F4),
                      width: UiHelper.displayWidth(context) * 1,
                      height: UiHelper.displayHeight(context) * 0.14,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                        UiHelper.displayWidth(context) * 0.155,
                                    height:
                                        UiHelper.displayHeight(context) * 0.076,
                                    alignment: Alignment.bottomLeft,
                                    margin: const EdgeInsets.only(top: 7),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAF2F4),
                                      borderRadius: BorderRadius.circular(80),
                                      border: Border.all(
                                          color: Color(0xFFDDDDDD),
                                          width: 1.4,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "images/firetruck.png",
                                        width: UiHelper.displayWidth(context) *
                                            0.094,
                                        height:
                                            UiHelper.displayHeight(context) *
                                                0.03,
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                UiHelper.verticalSpace(vspace: Spacing.xsmall),
                                Text(
                                  "दमकल",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.038,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                        UiHelper.displayWidth(context) * 0.155,
                                    height:
                                        UiHelper.displayHeight(context) * 0.076,
                                    alignment: Alignment.bottomLeft,
                                    margin: const EdgeInsets.only(top: 7),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAF2F4),
                                      borderRadius: BorderRadius.circular(80),
                                      border: Border.all(
                                          color: Color(0xFFDDDDDD),
                                          width: 1.4,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "images/waterdrop.png",
                                        width: UiHelper.displayWidth(context) *
                                            0.079,
                                        height:
                                            UiHelper.displayHeight(context) *
                                                0.05,
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                UiHelper.verticalSpace(vspace: Spacing.xsmall),
                                Text(
                                  "रगत",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Roboto-Regular",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7C7C7C),
                                    fontSize:
                                        UiHelper.displayWidth(context) * 0.038,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
