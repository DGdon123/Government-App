// To parse this JSON data, do
//
//     final kanun = kanunFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Kanun kanunFromJson(String str) => Kanun.fromJson(json.decode(str));

String kanunToJson(Kanun data) => json.encode(data.toJson());

class Kanun {
  Kanun({
    required this.kaarkanun,
  });

  List<Kaarkanun> kaarkanun;

  factory Kanun.fromJson(Map<String, dynamic> json) => Kanun(
        kaarkanun: List<Kaarkanun>.from(
            json["kaarkanun"].map((x) => Kaarkanun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "kaarkanun": List<dynamic>.from(kaarkanun.map((x) => x.toJson())),
      };
}

class Kaarkanun {
  Kaarkanun({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String description;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Kaarkanun.fromJson(Map<String, dynamic> json) => Kaarkanun(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
