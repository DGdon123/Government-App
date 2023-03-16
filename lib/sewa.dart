// ignore_for_file: unnecessary_new

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prabidhi/models/gharjagga.dart';
import 'package:http/http.dart' as http;

import 'models/sewamodel.dart';

class NinethScreen extends StatefulWidget {
  const NinethScreen({Key? key}) : super(key: key);

  @override
  State<NinethScreen> createState() => _NinethScreenState();
}

class _NinethScreenState extends State<NinethScreen> {
  FlutterSecureStorage storage = FlutterSecureStorage();
  var isLoading = true;
  List<Sewasubidha> samplePosts = [];

  @override
  void initState() {
    super.initState();

    data();
  }

  Future<List<Sewasubidha>> data() async {
    final response = await http.get(
      Uri.parse(
        'http://govapp.prabidhienterprises.com/api/nagrikbadapatra/sewasubidha',
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
            List<Sewasubidha>.from(index.map((x) => Sewasubidha.fromJson(x))));
      }

      return samplePosts;
    } else {
      return samplePosts;
    }
  }

  @override
  Widget build(BuildContext context) {
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
                Navigator.pushNamed(context, '/fourteenth');
              },
            );
          },
        ),
        backgroundColor: Color(0xFF004BA4),
        title: const Text('सेवा | सुविधा',
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
    );
  }
}
