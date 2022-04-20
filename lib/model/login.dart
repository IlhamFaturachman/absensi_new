// To parse required this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    Login({
        required this.data,
    });

    Data data;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.id,
        required this.idNumber,
        required this.role,
    });

    int id;
    String idNumber;
    String role;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        idNumber: json["id_number"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_number": idNumber,
        "role": role,
    };
}
