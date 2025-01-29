import 'package:json_annotation/json_annotation.dart';

part 'large.g.dart';

@JsonSerializable()
class Large {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "width")
  final int? width;
  @JsonKey(name: "height")
  final int? height;
  @JsonKey(name: "size")
  final int? size;
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  Large({
    this.url,
    this.width,
    this.height,
    this.size,
    this.thumbnail,
  });

  Large copyWith({
    String? url,
    int? width,
    int? height,
    int? size,
    String? thumbnail,
  }) =>
      Large(
        url: url ?? this.url,
        width: width ?? this.width,
        height: height ?? this.height,
        size: size ?? this.size,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory Large.fromJson(Map<String, dynamic> json) => _$LargeFromJson(json);

  Map<String, dynamic> toJson() => _$LargeToJson(this);
}
