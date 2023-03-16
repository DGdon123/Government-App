import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SixthRoute extends StatefulWidget {
  const SixthRoute({Key? key}) : super(key: key);
  @override
  State<SixthRoute> createState() => _SixthRouteState();
}

class _SixthRouteState extends State<SixthRoute> {
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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              child: Image.asset(
                "images/download.png",
                width: 230,
                height: 75,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: width * 0.85,
                      child: TextFormField(
                        controller: emailController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon: Icon(
                            Icons.smartphone_rounded,
                            color: Color(0xFF004BA4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'इमेल वा मोबाइल नम्बर',
                          hintStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB8B8B8),
                            fontSize: UiHelper.displayWidth(context) * 0.045,
                          ),
                          suffixIconColor: Color.fromARGB(255, 255, 0, 0),
                        ),
                        style: TextStyle(
                            fontSize: UiHelper.displayWidth(context) * 0.046,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2222222)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email field cannot be empty';
                          }
                          return '';
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 17),
                      width: width * 0.85,
                      child: TextFormField(
                        controller: passwordController,
                        maxLines: 1,
                        obscureText: _isObscure,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.lock_outline_rounded
                                    : Icons.lock_open_rounded,
                                color: const Color(0xFF004BA4),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'पासवर्ड',
                          hintStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB8B8B8),
                            fontSize: UiHelper.displayWidth(context) * 0.045,
                          ),
                          suffixIconColor: Color.fromARGB(255, 255, 0, 0),
                        ),
                        style: TextStyle(
                            fontSize: UiHelper.displayWidth(context) * 0.046,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2222222)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email field cannot be empty';
                          }
                          return '';
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 11),
                      child: Text(
                        'पासवर्ड भुल्नुभयो?',
                        style: TextStyle(
                          fontFamily: "SignikaNegative-Regular",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF004BA4),
                          fontSize: UiHelper.displayWidth(context) * 0.042,
                        ),
                      ),
                    ),
                    UiHelper.verticalSpace(vspace: Spacing.large),
                    Container(
                      height: height * 0.075,
                      width: width * 0.65,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "लग-इन",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height:
                                    UiHelper.displayHeight(context) * 0.0014,
                                fontFamily: "ZenKakuGothicAntique",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF),
                                fontSize: width * 0.07,
                              ),
                            ),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Container(
                              width: UiHelper.displayWidth(context) * 0.069,
                              height: UiHelper.displayHeight(context) * 0.034,
                              decoration: BoxDecoration(
                                color: Color(0xFF004BA4),
                                border: Border.all(
                                    color: const Color(0xFFFFFFFFF),
                                    width: 1.1,
                                    style: BorderStyle.solid),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(13.8)),
                              ),
                              child: Icon(Icons.arrow_forward_ios_rounded,
                                  size: UiHelper.displayWidth(context) * 0.042,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Text(
                        "यदि तपाईंले भुमे गाउँपालिकामा दर्ता गर्नुभएको छैन \nभने, दर्ताको लागि यो बटनमा क्लिक गर्नुहोस्।",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ZenKakuGothicAntique",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF636363),
                          fontSize: width * 0.042,
                        ),
                      ),
                    ),
                    UiHelper.verticalSpace(vspace: Spacing.large),
                    Container(
                      height: height * 0.075,
                      width: width * 0.65,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF004BA4),
                            offset: Offset(0, 3.8),
                            blurRadius: 6.0,
                            spreadRadius: 1.1,
                          ), //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _buttonColor, //background color of button
                          //border width and color
                          backgroundColor: Color(0xFFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/line13');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "दर्ता फारम",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height:
                                    UiHelper.displayHeight(context) * 0.0015,
                                fontFamily: "ZenKakuGothicAntique",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF004BA4),
                                fontSize: width * 0.07,
                              ),
                            ),
                            UiHelper.horizontaSpace(hspace: Spacing.medium),
                            Container(
                              width: UiHelper.displayWidth(context) * 0.069,
                              height: UiHelper.displayHeight(context) * 0.034,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                border: Border.all(
                                    color: const Color(0xFF004BA4),
                                    width: 1.4,
                                    style: BorderStyle.solid),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(13.8)),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: UiHelper.displayWidth(context) * 0.043,
                                color: Color(0xFF004BA4),
                              ),
                            ),
                          ],
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

      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(
            backgroundColor: Color(0xFFFFFFFF),
            child: Icon(
              Icons.close_rounded,
              size: UiHelper.displayWidth(context) * 0.075,
              color: Color(0xFF004BA4),
            ),
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, '/second');
              });
            }),
      ),
      // position the cart button in the center of the bottom navigation bar
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
