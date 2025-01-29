import 'package:json_annotation/json_annotation.dart';

part 'hit.g.dart';

@JsonSerializable()
class Hit {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "pageURL")
  final String? pageUrl;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "tags")
  final String? tags;
  @JsonKey(name: "previewURL")
  final String? previewUrl;
  @JsonKey(name: "previewWidth")
  final int? previewWidth;
  @JsonKey(name: "previewHeight")
  final int? previewHeight;
  @JsonKey(name: "webformatURL")
  final String? webformatUrl;
  @JsonKey(name: "webformatWidth")
  final int? webformatWidth;
  @JsonKey(name: "webformatHeight")
  final int? webformatHeight;
  @JsonKey(name: "largeImageURL")
  final String? largeImageUrl;
  @JsonKey(name: "imageWidth")
  final int? imageWidth;
  @JsonKey(name: "imageHeight")
  final int? imageHeight;
  @JsonKey(name: "imageSize")
  final int? imageSize;
  @JsonKey(name: "views")
  final int? views;
  @JsonKey(name: "downloads")
  final int? downloads;
  @JsonKey(name: "collections")
  final int? collections;
  @JsonKey(name: "likes")
  final int? likes;
  @JsonKey(name: "comments")
  final int? comments;
  @JsonKey(name: "user_id")
  final int? userId;
  @JsonKey(name: "user")
  final String? user;
  @JsonKey(name: "userImageURL")
  final String? userImageUrl;

  Hit({
    this.id,
    this.pageUrl,
    this.type,
    this.tags,
    this.previewUrl,
    this.previewWidth,
    this.previewHeight,
    this.webformatUrl,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageUrl,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageUrl,
  });

  Hit copyWith({
    int? id,
    String? pageUrl,
    String? type,
    String? tags,
    String? previewUrl,
    int? previewWidth,
    int? previewHeight,
    String? webformatUrl,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageUrl,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    int? userId,
    String? user,
    String? userImageUrl,
  }) =>
      Hit(
        id: id ?? this.id,
        pageUrl: pageUrl ?? this.pageUrl,
        type: type ?? this.type,
        tags: tags ?? this.tags,
        previewUrl: previewUrl ?? this.previewUrl,
        previewWidth: previewWidth ?? this.previewWidth,
        previewHeight: previewHeight ?? this.previewHeight,
        webformatUrl: webformatUrl ?? this.webformatUrl,
        webformatWidth: webformatWidth ?? this.webformatWidth,
        webformatHeight: webformatHeight ?? this.webformatHeight,
        largeImageUrl: largeImageUrl ?? this.largeImageUrl,
        imageWidth: imageWidth ?? this.imageWidth,
        imageHeight: imageHeight ?? this.imageHeight,
        imageSize: imageSize ?? this.imageSize,
        views: views ?? this.views,
        downloads: downloads ?? this.downloads,
        collections: collections ?? this.collections,
        likes: likes ?? this.likes,
        comments: comments ?? this.comments,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        userImageUrl: userImageUrl ?? this.userImageUrl,
      );

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);

  Map<String, dynamic> toJson() => _$HitToJson(this);
}
