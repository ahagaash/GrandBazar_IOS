// To parse this JSON data, do
//
//     final storeModel = storeModelFromJson(jsonString);

import 'dart:convert';

List<StoreModel> storeModelFromJson(String str) => List<StoreModel>.from(json.decode(str).map((x) => StoreModel.fromJson(x)));

String storeModelToJson(List<StoreModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StoreModel {
    int id;
    String name;
    String phone;
    String email;
    City city;

    StoreModel({
        required this.id,
        required this.name,
        required this.phone,
        required this.email,
        required this.city,
    });

    factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        city: City.fromJson(json["city"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "city": city.toJson(),
    };
}

class City {
    int id;
    String name;

    City({
        required this.id,
        required this.name,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
