import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);
  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  var size, height, width;
  var name = TextEditingController();
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
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF222222),
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFF004BA4),
      ),
      backgroundColor: Color(0xFF004BA4),
      body: Column(
        children: [
          UiHelper.verticalSpace(vspace: Spacing.large),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.0005,
                width: width * 0.85,
                color: Color(0xFFFFFFFF),
              ),
            ],
          ),
          UiHelper.verticalSpace(vspace: Spacing.medium),
          Text(
            "घरधुरी नम्बर राखनुहोस:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "ZenKakuGothicAntique",
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
              fontSize: width * 0.046,
            ),
          ),
          UiHelper.verticalSpace(vspace: Spacing.medium),
          Container(
            width: width * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFD4F0FC),
              border: Border.all(
                  color: const Color(0xFFD4F0FC),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: TextField(
              controller: name,
              maxLines: 1,
              cursorColor: Colors.black,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD4F0FC),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD4F0FC),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
              ),
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "ZenKakuGothicAntique",
                fontSize: UiHelper.displayWidth(context) * 0.042,
              ),
            ),
          ),
          UiHelper.verticalSpace(vspace: Spacing.large),
          Container(
            height: height * 0.0005,
            width: width * 0.85,
            color: Color(0xFFFFFFFF),
          ),
        ],
      ),
    );
  }
}
