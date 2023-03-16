import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/ui_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FifthRoute extends StatefulWidget {
  const FifthRoute({Key? key}) : super(key: key);
  @override
  State<FifthRoute> createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {
  var size, height, width;
  bool _isButtonDisabled = true;
  bool _rememberMe = false;
  bool _isObscure = true;
  bool _clicked = false;
  final storage = FlutterSecureStorage();

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController mobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  Color originalButtonColor = Color(0xFFD71B23);
  Color? _buttonColor;
  String _email = '';
  String? dropdownvalue;
  String? dropdownvalue1;
  bool _isChecked = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String _password = '';
  var items = ['पुरुष', 'महिला', 'अरू'];
  var items1 = ['१', '२', '३', '४', '५', '६', '७', '८'];

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF004BA4),
          title: const Text("दर्ता फारम",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto Bold',
                fontSize: 22,
                height: 1.19,
                fontWeight: FontWeight.w500,
              )),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFFFFFFFF),
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(children: [
          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 45),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: nameController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'नाम',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: addressController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'ठेगाना',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: emailController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'इ-मेल',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: passwordController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'पासवर्ड',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: repasswordController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'पासवर्ड पुन: प्रविष्टि गर्नुहोस्',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: mobController,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9BC2F2),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF004BA4),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                          contentPadding: EdgeInsets.only(left: 1),
                          labelText: 'मोबाइल नम्बर',
                          labelStyle: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
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
                      width: UiHelper.displayWidth(context) * 0.85,
                      margin: const EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF9BC2F2),
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: DropdownButton2(
                        searchController: genderController,
                        dropdownMaxHeight: 160,
                        itemPadding: const EdgeInsets.only(left: 16),
                        isExpanded: true,
                        iconSize: 35,
                        buttonPadding: const EdgeInsets.only(top: 5),
                        iconEnabledColor: const Color(0xFF999999),
                        iconDisabledColor: const Color(0xFF999999),
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF999999),
                          fontSize: UiHelper.displayWidth(context) * 0.042,
                        ),
                        underline:
                            Container(color: Color.fromARGB(255, 255, 0, 0)),
                        hint: Text(
                          "लिङ्ग",
                          style: TextStyle(
                            fontSize: UiHelper.displayWidth(context) * 0.042,
                            color: Color(0xFF999999),
                          ),
                        ),
                        value: dropdownvalue,
                        items: items.map((itemone) {
                          return DropdownMenuItem(
                              value: itemone, child: Text(itemone));
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            dropdownvalue = newvalue!;
                          });
                        },
                      ),
                    ),
                    UiHelper.verticalSpace(vspace: Spacing.xsmall),
                    Row(
                      children: [
                        UiHelper.horizontaSpace(hspace: Spacing.large),
                        Checkbox(
                          checkColor: Color(0xFFFFFFFF),
                          activeColor: Color(0xFF004BA4),
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'म ब्यासको बासिन्दा हुँ।',
                          style: TextStyle(
                            fontSize: UiHelper.displayWidth(context) * 0.04,
                            color: Color(0xFF2222222),
                          ),
                        ),
                      ],
                    ),
                    if (_isChecked)
                      Container(
                        width: UiHelper.displayWidth(context) * 0.85,
                        margin: const EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF9BC2F2),
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: DropdownButton2(
                          searchController: genderController,
                          dropdownMaxHeight: 400,
                          itemPadding: const EdgeInsets.only(left: 16),
                          isExpanded: true,
                          iconSize: 35,
                          buttonPadding: const EdgeInsets.only(top: 5),
                          iconEnabledColor: const Color(0xFF999999),
                          iconDisabledColor: const Color(0xFF999999),
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999),
                            fontSize: UiHelper.displayWidth(context) * 0.042,
                          ),
                          underline:
                              Container(color: Color.fromARGB(255, 255, 0, 0)),
                          hint: Text(
                            "वडा नम्बर",
                            style: TextStyle(
                              fontSize: UiHelper.displayWidth(context) * 0.042,
                              color: Color(0xFF999999),
                            ),
                          ),
                          value: dropdownvalue1,
                          items: items1.map((itemone) {
                            return DropdownMenuItem(
                                value: itemone, child: Text(itemone));
                          }).toList(),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue = newvalue!;
                            });
                          },
                        ),
                      ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 40),
                          height: UiHelper.displayHeight(context) * 0.06,
                          width: UiHelper.displayWidth(context) * 0.85,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 147, 226,
                                  101), //background color of button
                              //border width and color

                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Text(
                              "पठाउनुहोस्",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "ZenKakuGothicAntique",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFF4FFE6),
                                fontSize:
                                    UiHelper.displayWidth(context) * 0.042,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
