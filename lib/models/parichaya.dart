// To parse this JSON data, do
//
//     final parichaya = parichayaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Parichaya parichayaFromJson(String str) => Parichaya.fromJson(json.decode(str));

String parichayaToJson(Parichaya data) => json.encode(data.toJson());

class Parichaya {
  Parichaya({
    required this.introduction,
  });

  List<Introduction> introduction;

  factory Parichaya.fromJson(Map<String, dynamic> json) => Parichaya(
        introduction: List<Introduction>.from(
            json["introduction"].map((x) => Introduction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "introduction": List<dynamic>.from(introduction.map((x) => x.toJson())),
      };
}

class Introduction {
  Introduction({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.order,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String description;
  int status;
  int order;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory Introduction.fromJson(Map<String, dynamic> json) => Introduction(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        status: json["status"],
        order: json["order"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "status": status,
        "order": order,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
