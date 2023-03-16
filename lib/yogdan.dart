import 'dart:convert';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:http/http.dart' as http;
import 'dart:math' as math;

import 'package:toggle_switch/toggle_switch.dart';

import 'models/yog.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF004BA4);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.23);
    path.quadraticBezierTo(
        size.width / 2, size.height / 14, size.width, size.height * 0.23);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class FifteenthScreen extends StatefulWidget {
  const FifteenthScreen({Key? key}) : super(key: key);

  @override
  State<FifteenthScreen> createState() => _FifteenthScreenState();
}

class _FifteenthScreenState extends State<FifteenthScreen> {
  FlutterSecureStorage storage = FlutterSecureStorage();
  var isLoading = true;
  List<Yogdaan> samplePosts = [];

  Future<List<Yogdaan>> data() async {
    final response = await http.get(
      Uri.parse(
        'http://govapp.prabidhienterprises.com/api/yogdaan',
      ),
    );

    var data = jsonDecode(response.body);
    print(data);

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      for (var index in data.values) {
        samplePosts
            .addAll(List<Yogdaan>.from(index.map((x) => Yogdaan.fromJson(x))));
      }

      return samplePosts;
    } else {
      return samplePosts;
    }
  }

  @override
  void initState() {
    super.initState();

    data();
  }

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
                  Navigator.pushNamed(context, '/second');
                },
              );
            },
          ),
          backgroundColor: Color(0xFF004BA4),
          title: const Text("योगदान",
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
                  child: Column(children: [
            Container(
              color: Color(0xFF004BA4),
              width: UiHelper.displayWidth(context) * 1,
              height: UiHelper.displayHeight(context) * 0.13,
              alignment: Alignment.center,
              child: Text(
                "ब्यास गाउँपालिकाको डिजिटल प्रोफाइल \nतयार पर्ना योगदान दिनुभयेका स्वयम्सेवाखरु",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "SignikaNegative-Bold",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontSize: UiHelper.displayWidth(context) * 0.052,
                ),
              ),
            ),
            UiHelper.verticalSpace(vspace: Spacing.medium),
            Text(
              "तपाइ पनी स्मार्ट-पालिका समुदयमा अब्द भइ योगदान \nदिन चाहनुहुन्छ भने हामिलाइ सम्पर्क गर्नुहोस्।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "SignikaNegative-Bold",
                fontWeight: FontWeight.w500,
                color: Color(0xFF004BA4),
                fontSize: UiHelper.displayWidth(context) * 0.038,
              ),
            ),
            Container(
              width: UiHelper.displayWidth(context) * 0.085,
              height: UiHelper.displayHeight(context) * 0.045,
              margin: const EdgeInsets.only(top: 12, bottom: 10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "images/finger.png",
                    ),
                    fit: BoxFit.fill),
                color: Colors.transparent,
              ),
            ),
            Container(
              width: UiHelper.displayWidth(context) * 0.9,
              height: UiHelper.displayHeight(context) * 0.066,
              margin: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        const Color(0xFF61C628), //background color of button
                    //border width and color

                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Text(
                    "सम्पर्क गर्न यहाँ थिच्नुहोस्",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: UiHelper.displayHeight(context) * 0.0015,
                      fontFamily: "ZenKakuGothicAntique",
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: UiHelper.displayWidth(context) * 0.045,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sixteenth');
                  }),
            ),
            UiHelper.verticalSpace(vspace: Spacing.medium),
            Container(
                width: UiHelper.displayWidth(context) * 0.95,
                height: UiHelper.displayHeight(context) * 0.00095,
                color: Colors.grey),
            UiHelper.verticalSpace(vspace: Spacing.small),
            Container(
              height: UiHelper.displayHeight(context) * 0.5,
              child: ListView.builder(
                  itemCount: samplePosts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final id = samplePosts[index].id;
                    final title = samplePosts[index].name;
                    final position = samplePosts[index].position;
                    final image = samplePosts[index].image;
                    return Column(
                      children: [
                        UiHelper.verticalSpace(vspace: Spacing.medium),
                        Container(
                          width: UiHelper.displayWidth(context) * 0.18,
                          height: UiHelper.displayHeight(context) * 0.09,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "$image",
                                ),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(80)),
                          ),
                        ),
                        UiHelper.verticalSpace(vspace: Spacing.small),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "SignikaNegative-Bold",
                            fontWeight: FontWeight.w200,
                            color: Color(0xFF222222),
                            fontSize: UiHelper.displayWidth(context) * 0.038,
                          ),
                        ),
                        Text(
                          position,
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
                    );
                  }),
            )
          ])))
        ]));
  }
}
