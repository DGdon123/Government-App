// To parse this JSON data, do
//
//     final wodaJankari = wodaJankariFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

WodaJankari wodaJankariFromJson(String str) =>
    WodaJankari.fromJson(json.decode(str));

String wodaJankariToJson(WodaJankari data) => json.encode(data.toJson());

class WodaJankari {
  WodaJankari({
    required this.woda,
    required this.member,
  });

  List<Woda> woda;
  List<Member> member;

  factory WodaJankari.fromJson(Map<String, dynamic> json) => WodaJankari(
        woda: List<Woda>.from(json["woda"].map((x) => Woda.fromJson(x))),
        member:
            List<Member>.from(json["member"].map((x) => Member.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "woda": List<dynamic>.from(woda.map((x) => x.toJson())),
        "member": List<dynamic>.from(member.map((x) => x.toJson())),
      };
}

class Member {
  Member({
    required this.id,
    required this.wodaNumber,
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
  int wodaNumber;
  String name;
  String position;
  String image;
  int order;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json["id"],
        wodaNumber: json["woda_number"],
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
        "woda_number": wodaNumber,
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

class Woda {
  Woda({
    required this.id,
    required this.title,
    required this.totalHouses,
    required this.numberOfMale,
    required this.numberOfFemale,
    required this.numberOfOther,
    required this.totalPopulation,
    required this.numberOfLiteracyMale,
    required this.numberOfLiteracyFemale,
    required this.area,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String title;
  int totalHouses;
  int numberOfMale;
  int numberOfFemale;
  int numberOfOther;
  int totalPopulation;
  int numberOfLiteracyMale;
  int numberOfLiteracyFemale;
  int area;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Woda.fromJson(Map<String, dynamic> json) => Woda(
        id: json["id"],
        title: json["title"],
        totalHouses: json["total_houses"],
        numberOfMale: json["number_of_male"],
        numberOfFemale: json["number_of_female"],
        numberOfOther: json["number_of_other"],
        totalPopulation: json["total_population"],
        numberOfLiteracyMale: json["number_of_literacy_male"],
        numberOfLiteracyFemale: json["number_of_literacy_female"],
        area: json["area"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "total_houses": totalHouses,
        "number_of_male": numberOfMale,
        "number_of_female": numberOfFemale,
        "number_of_other": numberOfOther,
        "total_population": totalPopulation,
        "number_of_literacy_male": numberOfLiteracyMale,
        "number_of_literacy_female": numberOfLiteracyFemale,
        "area": area,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
