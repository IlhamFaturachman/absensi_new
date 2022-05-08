// To parse required this JSON data, do
//
//     final fetchAbsen = fetchAbsenFromJson(jsonString);

import 'dart:convert';

FetchAbsen fetchAbsenFromJson(String str) => FetchAbsen.fromJson(json.decode(str));

String fetchAbsenToJson(FetchAbsen data) => json.encode(data.toJson());

class FetchAbsen {
    FetchAbsen({
        required this.data,
    });

    List<Datum> data;

    factory FetchAbsen.fromJson(Map<String, dynamic> json) => FetchAbsen(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.userId,
        required this.name,
        required this.email,
        required this.phone,
        required this.address,
        required this.image,
        required this.attendanceList,
    });

    int id;
    int userId;
    String name;
    String email;
    String phone;
    String address;
    dynamic image;
    List<AttendanceList> attendanceList;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        image: json["image"],
        attendanceList: List<AttendanceList>.from(json["attendance_list"].map((x) => AttendanceList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "email": email,
        "phone": phone,
        "address": address,
        "image": image,
        "attendance_list": List<dynamic>.from(attendanceList.map((x) => x.toJson())),
    };
}

class AttendanceList {
    AttendanceList({
        required this.id,
        required this.teacherId,
        required this.subjectId,
        required this.qrValue,
        required this.date,
        required this.openTime,
        required this.closedTime,
        required this.status,
        required this.title,
        required this.classId,
    });

    int id;
    int teacherId;
    int subjectId;
    String qrValue;
    DateTime date;
    DateTime openTime;
    DateTime closedTime;
    String status;
    String title;
    int classId;

    factory AttendanceList.fromJson(Map<String, dynamic> json) => AttendanceList(
        id: json["id"],
        teacherId: json["teacher_id"],
        subjectId: json["subject_id"],
        qrValue: json["qr_value"],
        date: DateTime.parse(json["date"]),
        openTime: DateTime.parse(json["open_time"]),
        closedTime: DateTime.parse(json["closed_time"]),
        status: json["status"],
        title: json["title"],
        classId: json["class_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "teacher_id": teacherId,
        "subject_id": subjectId,
        "qr_value": qrValue,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "open_time": openTime.toIso8601String(),
        "closed_time": closedTime.toIso8601String(),
        "status": status,
        "title": title,
        "class_id": classId,
        
    };
}
