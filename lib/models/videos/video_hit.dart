import 'package:json_annotation/json_annotation.dart';
import 'package:pixabay_ota/models/videos/videos_class.dart';

part 'video_hit.g.dart';

@JsonSerializable()
class VideoHit {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "pageURL")
  final String? pageUrl;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "tags")
  final String? tags;
  @JsonKey(name: "duration")
  final int? duration;
  @JsonKey(name: "videos")
  final VideosClass? videos;
  @JsonKey(name: "views")
  final int? views;
  @JsonKey(name: "downloads")
  final int? downloads;
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

  VideoHit({
    this.id,
    this.pageUrl,
    this.type,
    this.tags,
    this.duration,
    this.videos,
    this.views,
    this.downloads,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageUrl,
  });

  VideoHit copyWith({
    int? id,
    String? pageUrl,
    String? type,
    String? tags,
    int? duration,
    VideosClass? videos,
    int? views,
    int? downloads,
    int? likes,
    int? comments,
    int? userId,
    String? user,
    String? userImageUrl,
  }) =>
      VideoHit(
        id: id ?? this.id,
        pageUrl: pageUrl ?? this.pageUrl,
        type: type ?? this.type,
        tags: tags ?? this.tags,
        duration: duration ?? this.duration,
        videos: videos ?? this.videos,
        views: views ?? this.views,
        downloads: downloads ?? this.downloads,
        likes: likes ?? this.likes,
        comments: comments ?? this.comments,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        userImageUrl: userImageUrl ?? this.userImageUrl,
      );

  factory VideoHit.fromJson(Map<String, dynamic> json) =>
      _$VideoHitFromJson(json);

  Map<String, dynamic> toJson() => _$VideoHitToJson(this);
}
