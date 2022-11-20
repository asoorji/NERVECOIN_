import 'dart:convert';

List<Content> contentFromJson(String str) => List<Content>.from(json.decode(str).map((x) => Content.fromJson(x)));
String contentToJson(List<Content> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Content {
  Content({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String? body;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
