import 'package:json_annotation/json_annotation.dart';
import 'hit.dart';

part 'photos.g.dart';

@JsonSerializable()
class Photos {
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "totalHits")
  final int? totalHits;
  @JsonKey(name: "hits")
  final List<Hit>? hits;

  Photos({
    this.total,
    this.totalHits,
    this.hits,
  });

  Photos copyWith({
    int? total,
    int? totalHits,
    List<Hit>? hits,
  }) =>
      Photos(
        total: total ?? this.total,
        totalHits: totalHits ?? this.totalHits,
        hits: hits ?? this.hits,
      );

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}
