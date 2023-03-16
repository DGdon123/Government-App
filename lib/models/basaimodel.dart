// To parse this JSON data, do
//
//     final basai = basaiFromJson(jsonString);

import 'dart:convert';

Basai basaiFromJson(String str) => Basai.fromJson(json.decode(str));

String basaiToJson(Basai data) => json.encode(data.toJson());

class Basai {
  Basai({
    required this.basaishari,
  });

  List<Basaishari> basaishari;

  factory Basai.fromJson(Map<String, dynamic> json) => Basai(
        basaishari: List<Basaishari>.from(
            json["basaishari"].map((x) => Basaishari.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "basaishari": List<dynamic>.from(basaishari.map((x) => x.toJson())),
      };
}

class Basaishari {
  Basaishari({
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

  factory Basaishari.fromJson(Map<String, dynamic> json) => Basaishari(
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
