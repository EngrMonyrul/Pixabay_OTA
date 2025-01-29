import 'package:json_annotation/json_annotation.dart';
import 'package:pixabay_ota/models/videos/video_hit.dart';

part 'videos.g.dart';

@JsonSerializable()
class Videos {
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "totalHits")
  final int? totalHits;
  @JsonKey(name: "hits")
  final List<VideoHit>? hits;

  Videos({
    this.total,
    this.totalHits,
    this.hits,
  });

  Videos copyWith({
    int? total,
    int? totalHits,
    List<VideoHit>? hits,
  }) =>
      Videos(
        total: total ?? this.total,
        totalHits: totalHits ?? this.totalHits,
        hits: hits ?? this.hits,
      );

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}



