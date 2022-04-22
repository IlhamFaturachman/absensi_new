// To parse required this JSON data, do
//
//     final classAttendances = classAttendancesFromJson(jsonString);

import 'dart:convert';

ClassAttendances classAttendancesFromJson(String str) => ClassAttendances.fromJson(json.decode(str));

String classAttendancesToJson(ClassAttendances data) => json.encode(data.toJson());

class ClassAttendances {
    ClassAttendances({
        required this.data,
    });

    List<Datum> data;

    factory ClassAttendances.fromJson(Map<String, dynamic> json) => ClassAttendances(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.grade,
        required this.majorId,
        required this.datumClass,
        required this.major,
    });

    int id;
    String grade;
    int majorId;
    String datumClass;
    Major major;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        grade: json["grade"],
        majorId: json["major_id"],
        datumClass: json["class"],
        major: Major.fromJson(json["major"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "grade": grade,
        "major_id": majorId,
        "class": datumClass,
        "major": major.toJson(),
    };
}

class Major {
    Major({
        required this.id,
        required this.name,
    });

    int id;
    String name;

    factory Major.fromJson(Map<String, dynamic> json) => Major(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
