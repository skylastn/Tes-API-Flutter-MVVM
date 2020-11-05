import 'dart:convert';

List<Gambar> gambarFromJson(String str) => List<Gambar>.from(json.decode(str).map((x) => Gambar.fromJson(x)));

String gambarToJson(List<Gambar> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Gambar {
  Gambar({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory Gambar.fromJson(Map<String, dynamic> json) => Gambar(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
