// To parse this JSON data, do
//
//     final yog = yogFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Yog yogFromJson(String str) => Yog.fromJson(json.decode(str));

String yogToJson(Yog data) => json.encode(data.toJson());

class Yog {
  Yog({
    required this.yogdaan,
  });

  List<Yogdaan> yogdaan;

  factory Yog.fromJson(Map<String, dynamic> json) => Yog(
        yogdaan:
            List<Yogdaan>.from(json["yogdaan"].map((x) => Yogdaan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "yogdaan": List<dynamic>.from(yogdaan.map((x) => x.toJson())),
      };
}

class Yogdaan {
  Yogdaan({
    required this.id,
    required this.name,
    required this.position,
    required this.image,
    required this.order,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String name;
  String position;
  String image;
  int order;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Yogdaan.fromJson(Map<String, dynamic> json) => Yogdaan(
        id: json["id"],
        name: json["name"],
        position: json["position"],
        image: json["image"],
        order: json["order"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "position": position,
        "image": image,
        "order": order,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
