// To parse this JSON data, do
//
//     final insertData = insertDataFromJson(jsonString);

import 'dart:convert';

InsertData insertDataFromJson(String str) => InsertData.fromJson(json.decode(str));

String insertDataToJson(InsertData data) => json.encode(data.toJson());

class InsertData {
    InsertData({
        required this.message,
    });

    String message;

    factory InsertData.fromJson(Map<String, dynamic> json) => InsertData(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
