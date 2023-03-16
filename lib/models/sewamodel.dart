// To parse this JSON data, do
//
//     final sewa = sewaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Sewa sewaFromJson(String str) => Sewa.fromJson(json.decode(str));

String sewaToJson(Sewa data) => json.encode(data.toJson());

class Sewa {
  Sewa({
    required this.sewasubidha,
  });

  List<Sewasubidha> sewasubidha;

  factory Sewa.fromJson(Map<String, dynamic> json) => Sewa(
        sewasubidha: List<Sewasubidha>.from(
            json["sewasubidha"].map((x) => Sewasubidha.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sewasubidha": List<dynamic>.from(sewasubidha.map((x) => x.toJson())),
      };
}

class Sewasubidha {
  Sewasubidha({
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

  factory Sewasubidha.fromJson(Map<String, dynamic> json) => Sewasubidha(
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
