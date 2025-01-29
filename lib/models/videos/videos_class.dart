import 'package:json_annotation/json_annotation.dart';
import 'large.dart';

part 'videos_class.g.dart';

@JsonSerializable()
class VideosClass {
  @JsonKey(name: "large")
  final Large? large;
  @JsonKey(name: "medium")
  final Large? medium;
  @JsonKey(name: "small")
  final Large? small;
  @JsonKey(name: "tiny")
  final Large? tiny;

  VideosClass({
    this.large,
    this.medium,
    this.small,
    this.tiny,
  });

  VideosClass copyWith({
    Large? large,
    Large? medium,
    Large? small,
    Large? tiny,
  }) =>
      VideosClass(
        large: large ?? this.large,
        medium: medium ?? this.medium,
        small: small ?? this.small,
        tiny: tiny ?? this.tiny,
      );

  factory VideosClass.fromJson(Map<String, dynamic> json) => _$VideosClassFromJson(json);

  Map<String, dynamic> toJson() => _$VideosClassToJson(this);
}
