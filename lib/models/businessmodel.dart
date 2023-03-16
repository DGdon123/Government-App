// To parse this JSON data, do
//
//     final business = businessFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Business businessFromJson(String str) => Business.fromJson(json.decode(str));

String businessToJson(Business data) => json.encode(data.toJson());

class Business {
  Business({
    required this.business,
  });

  List<BusinessElement> business;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        business: List<BusinessElement>.from(
            json["business"].map((x) => BusinessElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "business": List<dynamic>.from(business.map((x) => x.toJson())),
      };
}

class BusinessElement {
  BusinessElement({
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

  factory BusinessElement.fromJson(Map<String, dynamic> json) =>
      BusinessElement(
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
