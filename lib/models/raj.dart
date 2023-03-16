// To parse this JSON data, do
//
//     final raj = rajFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Raj rajFromJson(String str) => Raj.fromJson(json.decode(str));

String rajToJson(Raj data) => json.encode(data.toJson());

class Raj {
  Raj({
    required this.raajpatra,
  });

  List<Raajpatra> raajpatra;

  factory Raj.fromJson(Map<String, dynamic> json) => Raj(
        raajpatra: List<Raajpatra>.from(
            json["raajpatra"].map((x) => Raajpatra.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "raajpatra": List<dynamic>.from(raajpatra.map((x) => x.toJson())),
      };
}

class Raajpatra {
  Raajpatra({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String description;
  int status;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory Raajpatra.fromJson(Map<String, dynamic> json) => Raajpatra(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        status: json["status"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "status": status,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
