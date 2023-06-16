// To parse this JSON data, do
//
//     final offersModel = offersModelFromJson(jsonString);

import 'dart:convert';

List<OffersModel> offersModelFromJson(String str) => List<OffersModel>.from(json.decode(str).map((x) => OffersModel.fromJson(x)));

String offersModelToJson(List<OffersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OffersModel {
    int id;
    String title;
    String percentage;
    String description;
    DateTime startDate;
    DateTime endDate;
    String scope;
    String status;
    int storeId;
    Image image;

    OffersModel({
        required this.id,
        required this.title,
        required this.percentage,
        required this.description,
        required this.startDate,
        required this.endDate,
        required this.scope,
        required this.status,
        required this.storeId,
        required this.image,
    });

    factory OffersModel.fromJson(Map<String, dynamic> json) => OffersModel(
        id: json["id"],
        title: json["title"],
        percentage: json["percentage"],
        description: json["description"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        scope: json["scope"],
        status: json["status"],
        storeId: json["store_id"],
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "percentage": percentage,
        "description": description,
        "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "scope": scope,
        "status": status,
        "store_id": storeId,
        "image": image.toJson(),
    };
}

class Image {
    int id;
    String modelType;
    int modelId;
    String collectionName;
    String name;
    String fileName;
    String mimeType;
    String disk;
    int size;
    List<dynamic> manipulations;

    Image({
        required this.id,
        required this.modelType,
        required this.modelId,
        required this.collectionName,
        required this.name,
        required this.fileName,
        required this.mimeType,
        required this.disk,
        required this.size,
        required this.manipulations,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        modelType: json["model_type"],
        modelId: json["model_id"],
        collectionName: json["collection_name"],
        name: json["name"],
        fileName: json["file_name"],
        mimeType: json["mime_type"],
        disk: json["disk"],
        size: json["size"],
        manipulations: List<dynamic>.from(json["manipulations"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "model_type": modelType,
        "model_id": modelId,
        "collection_name": collectionName,
        "name": name,
        "file_name": fileName,
        "mime_type": mimeType,
        "disk": disk,
        "size": size,
        "manipulations": List<dynamic>.from(manipulations.map((x) => x)),
    };
}
