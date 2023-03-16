import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import '../models/wodajankarimodel.dart';

var link = 'http://govapp.prabidhienterprises.com/api/woda-jankari';
FlutterSecureStorage storage = FlutterSecureStorage();
Future<WodaJankari?> getData() async {
  String? token = await storage.read(key: "token");
  var res = await http
      .get(Uri.parse(link), headers: {"Authorization": "Bearer $token"});
  print(res.body);
  if (res.statusCode == 200) {
    WodaJankari? dum = wodaJankariFromJson(res.body);
    print(dum);
    if (dum != null) return dum;
  } else {
    throw Exception('Failed to load data');
  }
}
