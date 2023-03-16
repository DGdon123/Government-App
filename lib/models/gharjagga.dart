// To parse this JSON data, do
//
//     final gharjagga = gharjaggaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Gharjagga gharjaggaFromJson(String str) => Gharjagga.fromJson(json.decode(str));

String gharjaggaToJson(Gharjagga data) => json.encode(data.toJson());

class Gharjagga {
  Gharjagga({
    required this.gharjagga,
  });

  List<GharjaggaElement> gharjagga;

  factory Gharjagga.fromJson(Map<String, dynamic> json) => Gharjagga(
        gharjagga: List<GharjaggaElement>.from(
            json["gharjagga"].map((x) => GharjaggaElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "gharjagga": List<dynamic>.from(gharjagga.map((x) => x.toJson())),
      };
}

class GharjaggaElement {
  GharjaggaElement({
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

  factory GharjaggaElement.fromJson(Map<String, dynamic> json) =>
      GharjaggaElement(
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
