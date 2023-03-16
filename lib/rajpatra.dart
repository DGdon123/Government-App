// ignore_for_file: unnecessary_new

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;
import 'package:prabidhi/models/raj.dart';
import 'package:prabidhi/ui_helper.dart';

import 'home.dart';

class ThirteenthRoute extends StatefulWidget {
  const ThirteenthRoute({Key? key}) : super(key: key);

  @override
  State<ThirteenthRoute> createState() => _ThirteenthRouteState();
}

class _ThirteenthRouteState extends State<ThirteenthRoute> {
  int currentIndex = 1;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    data();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  FlutterSecureStorage storage = FlutterSecureStorage();
  var isLoading = true;
  List<Raajpatra> samplePosts = [];

  Future<List<Raajpatra>> data() async {
    final response = await http.get(
      Uri.parse(
        'http://govapp.prabidhienterprises.com/api/raajpatra',
      ),
    );

    var data = jsonDecode(response.body);
    print(data);

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      for (var index in data.values) {
        samplePosts.addAll(
            List<Raajpatra>.from(index.map((x) => Raajpatra.fromJson(x))));
      }

      return samplePosts;
    } else {
      return samplePosts;
    }
  }

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
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
        title: const Text('राजपत्र',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: samplePosts.length,
                itemBuilder: (BuildContext context, int index) {
                  final id = samplePosts[index].title;
                  final title = samplePosts[index].description;
                  return Column(
                    children: [
                      Card(
                        margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                        color: Color(0xFF004BA4),
                        child: ExpansionTile(
                          title: Text(
                            id,
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 17.2,
                                fontFamily: "ZenKakuGothicAntique",
                                fontWeight: FontWeight.w100),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                          children: [
                            Container(
                              color: Color(0xFFFFFFFF),
                              child: Column(children: [
                                Html(
                                  data: title,
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF3F1F2),
        iconSize: 32,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF004BA4),
        unselectedItemColor: Color(0xFF222222),
        selectedFontSize: 14,
        onTap: (value) {
          if (value == 0) Navigator.pushNamed(context, '/second');
          if (value == 1) Navigator.pushNamed(context, '/fifteenth');
          if (value == 2) scaffoldKey.currentState?.openDrawer();
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
