// To parse this JSON data, do
//
//     final other = otherFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Other otherFromJson(String str) => Other.fromJson(json.decode(str));

String otherToJson(Other data) => json.encode(data.toJson());

class Other {
  Other({
    required this.basaishari,
  });

  List<Hello> basaishari;

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        basaishari:
            List<Hello>.from(json["basaishari"].map((x) => Hello.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "basaishari": List<dynamic>.from(basaishari.map((x) => x.toJson())),
      };
}

class Hello {
  Hello({
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

  factory Hello.fromJson(Map<String, dynamic> json) => Hello(
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
