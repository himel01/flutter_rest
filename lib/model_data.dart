import 'dart:convert';

class ModelData {
  ModelData({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  // factory ModelData.fromRawJson(String str) => ModelData.fromJson(json.decode(str));
  //
  // String toJson() => json.encode(toMap());

  factory ModelData.fromJson(Map<String, dynamic> json) => ModelData(
    albumId: json["albumId"] as int,
    id: json["id"] as int,
    title: json["title"] as String,
    url: json["url"] as String,
    thumbnailUrl: json["thumbnailUrl"] as String,
  );

  Map<String, dynamic> toMap() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };

}
