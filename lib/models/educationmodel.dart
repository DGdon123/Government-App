// To parse this JSON data, do
//
//     final education = educationFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Education educationFromJson(String str) => Education.fromJson(json.decode(str));

String educationToJson(Education data) => json.encode(data.toJson());

class Education {
  Education({
    required this.ehf,
  });

  List<Ehf> ehf;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        ehf: List<Ehf>.from(json["ehf"].map((x) => Ehf.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ehf": List<dynamic>.from(ehf.map((x) => x.toJson())),
      };
}

class Ehf {
  Ehf({
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

  factory Ehf.fromJson(Map<String, dynamic> json) => Ehf(
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
