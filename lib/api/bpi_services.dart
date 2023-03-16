import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prabidhi/models/yog.dart';

var link = 'http://govapp.prabidhienterprises.com/api/yogdaan';
FlutterSecureStorage storage = FlutterSecureStorage();
Future<Yog?> getting() async {
  String? token = await storage.read(key: "token");
  var res = await http
      .get(Uri.parse(link), headers: {"Authorization": "Bearer $token"});
  print(res.body);
  if (res.statusCode == 200) {
    Yog? hello = yogFromJson(res.body);
    print(hello);
    if (hello != null) return hello;
  } else {
    throw Exception('Failed to load data');
  }
}
