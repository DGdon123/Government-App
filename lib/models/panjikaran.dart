// To parse this JSON data, do
//
//     final panjikaran = panjikaranFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Panjikaran panjikaranFromJson(String str) =>
    Panjikaran.fromJson(json.decode(str));

String panjikaranToJson(Panjikaran data) => json.encode(data.toJson());

class Panjikaran {
  Panjikaran({
    required this.panjikaran,
  });

  List<PanjikaranElement> panjikaran;

  factory Panjikaran.fromJson(Map<String, dynamic> json) => Panjikaran(
        panjikaran: List<PanjikaranElement>.from(
            json["panjikaran"].map((x) => PanjikaranElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "panjikaran": List<dynamic>.from(panjikaran.map((x) => x.toJson())),
      };
}

class PanjikaranElement {
  PanjikaranElement({
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

  factory PanjikaranElement.fromJson(Map<String, dynamic> json) =>
      PanjikaranElement(
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
