import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);
  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  var size, height, width;
  bool _isButtonDisabled = true;
  bool _rememberMe = false;
  bool _isObscure = true;
  bool _clicked = false;
  final storage = FlutterSecureStorage();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color originalButtonColor = Color(0xFFD71B23);
  Color? _buttonColor;
  String _email = '';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String _password = '';

  @override
  void initState() {
    super.initState();
    _buttonColor = originalButtonColor;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
        title: const Text('लग–ईन',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto Bold',
              fontSize: 22,
              height: 1.19,
              fontWeight: FontWeight.w500,
            )),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            UiHelper.verticalSpace(vspace: Spacing.large),
            Image.asset(
              "images/download.png",
              width: 230,
              height: 75,
              fit: BoxFit.fill,
            ),
            UiHelper.verticalSpace(vspace: Spacing.xlarge),
            Container(
              height: height * 0.13,
              width: width * 0.93,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _buttonColor, //background color of button
                  //border width and color
                  backgroundColor: Color(0xFF004BA4),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/line11');
                },
                child: Column(
                  children: [
                    UiHelper.verticalSpace(vspace: Spacing.medium),
                    Container(
                      child: Image.asset(
                        "images/loghome.png",
                        height: height * 0.038,
                        width: width * 0.08,
                        fit: BoxFit.fill,
                      ),
                    ),
                    UiHelper.verticalSpace(vspace: Spacing.xsmall),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "म घरधुरी टोकन नम्बरको आधारमा लग-इन गर्छु",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "ZenKakuGothicAntique",
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                            fontSize: width * 0.042,
                          ),
                        ),
                        UiHelper.horizontaSpace(hspace: Spacing.small),
                        Container(
                          width: UiHelper.displayWidth(context) * 0.048,
                          height: UiHelper.displayHeight(context) * 0.024,
                          decoration: BoxDecoration(
                            color: Color(0xFF004BA4),
                            border: Border.all(
                                color: const Color(0xFFFFFFFFF),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(13.8)),
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: UiHelper.displayWidth(context) * 0.029,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            UiHelper.verticalSpace(vspace: Spacing.small),
            Container(
              height: height * 0.13,
              width: width * 0.93,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _buttonColor, //background color of button
                  //border width and color
                  backgroundColor: Color(0xFF004BA4),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/line12');
                },
                child: Column(
                  children: [
                    UiHelper.verticalSpace(vspace: Spacing.medium),
                    Container(
                      child: Image.asset(
                        "images/phone.png",
                        height: height * 0.038,
                        width: width * 0.08,
                        fit: BoxFit.fill,
                      ),
                    ),
                    UiHelper.verticalSpace(vspace: Spacing.xsmall),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "मा फोन नम्बर वा ईमेलको आधारमा लग-इन गर्छु",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "ZenKakuGothicAntique",
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                            fontSize: width * 0.042,
                          ),
                        ),
                        UiHelper.horizontaSpace(hspace: Spacing.small),
                        Container(
                          width: UiHelper.displayWidth(context) * 0.048,
                          height: UiHelper.displayHeight(context) * 0.024,
                          decoration: BoxDecoration(
                            color: Color(0xFF004BA4),
                            border: Border.all(
                                color: const Color(0xFFFFFFFFF),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(13.8)),
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              size: UiHelper.displayWidth(context) * 0.029,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            UiHelper.verticalSpace(vspace: Spacing.medium),
            Container(
              height: UiHelper.displayHeight(context) * 0.089,
              width: UiHelper.displayWidth(context) * 0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF004BA4), // Set the border color here
                  width: 2, // Set the border width here
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "तपाईको डाटा हामीसँग सुरक्षित छ। सफ्टटेक \nफाउन्डेशनले तपाइँको गोपनीयताको सम्मान गर्दछ।",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "ZenKakuGothicAntique",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF004BA4),
                      fontSize: width * 0.042,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
