// To parse this JSON data, do
//
//     final janazaNews = janazaNewsFromJson(jsonString);

import 'dart:convert';

List<JanazaNews> janazaNewsFromJson(String str) =>
    List<JanazaNews>.from(json.decode(str).map((x) => JanazaNews.fromJson(x)));

String janazaNewsToJson(List<JanazaNews> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JanazaNews {
  int id;
  String personName;
  DateTime date;
  String burialTime;
  String description;
  String address;
  String latitude;
  String longitude;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  Image image;
  String type;
  List<Image> media;

  JanazaNews({
    required this.id,
    required this.personName,
    required this.date,
    required this.burialTime,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.image,
    required this.type,
    required this.media,
  });

  factory JanazaNews.fromJson(Map<String, dynamic> json) => JanazaNews(
        id: json["id"],
        personName: json["person_name"],
        date: DateTime.parse(json["date"]),
        burialTime: json["burial_time"],
        description: json["description"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        image: Image.fromJson(json["image"]),
        type: json["type"],
        media: List<Image>.from(json["media"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "person_name": personName,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "burial_time": burialTime,
        "description": description,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "image": image.toJson(),
        "type": type,
        "media": List<dynamic>.from(media.map((x) => x.toJson())),
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
  CustomProperties customProperties;
  List<dynamic> responsiveImages;
  int orderColumn;
  DateTime createdAt;
  DateTime updatedAt;
  String url;
  String thumbnail;
  String preview;

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
    required this.customProperties,
    required this.responsiveImages,
    required this.orderColumn,
    required this.createdAt,
    required this.updatedAt,
    required this.url,
    required this.thumbnail,
    required this.preview,
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
        customProperties: CustomProperties.fromJson(json["custom_properties"]),
        responsiveImages:
            List<dynamic>.from(json["responsive_images"].map((x) => x)),
        orderColumn: json["order_column"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        url: json["url"],
        thumbnail: json["thumbnail"],
        preview: json["preview"],
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
        "custom_properties": customProperties.toJson(),
        "responsive_images": List<dynamic>.from(responsiveImages.map((x) => x)),
        "order_column": orderColumn,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "url": url,
        "thumbnail": thumbnail,
        "preview": preview,
      };
}

class CustomProperties {
  GeneratedConversions generatedConversions;

  CustomProperties({
    required this.generatedConversions,
  });

  factory CustomProperties.fromJson(Map<String, dynamic> json) =>
      CustomProperties(
        generatedConversions:
            GeneratedConversions.fromJson(json["generated_conversions"]),
      );

  Map<String, dynamic> toJson() => {
        "generated_conversions": generatedConversions.toJson(),
      };
}

class GeneratedConversions {
  bool thumb;
  bool preview;

  GeneratedConversions({
    required this.thumb,
    required this.preview,
  });

  factory GeneratedConversions.fromJson(Map<String, dynamic> json) =>
      GeneratedConversions(
        thumb: json["thumb"],
        preview: json["preview"],
      );

  Map<String, dynamic> toJson() => {
        "thumb": thumb,
        "preview": preview,
      };
}
