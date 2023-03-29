import 'dart:convert';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;
import 'package:prabidhi/page5.dart';
import 'package:prabidhi/page6.dart';
import 'package:prabidhi/ui_helper.dart';

import 'home.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int _selectedIndex = 0;

  void _onPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TabBar get _tabBar => TabBar(
        labelPadding: const EdgeInsets.only(top: 4),
        labelStyle: TextStyle(
          fontSize: UiHelper.displayWidth(context) * 0.037,
          fontWeight: FontWeight.bold,
          color: Colors.transparent,
        ),
        labelColor: Color(0xFFFFFFFF),
        unselectedLabelColor: Color(0xFFADECFF),
        indicatorColor: Color(0xFF84E2F4),
        tabs: [
          Tab(text: 'नगरपालिका'),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Color(0xFF004BA4), //<-- SEE HERE
                child: _tabBar,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          body: TabBarView(children: [
            Page5(),
          ])),
    );
  }
}
