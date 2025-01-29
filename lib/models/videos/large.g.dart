// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'large.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Large _$LargeFromJson(Map<String, dynamic> json) => Large(
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$LargeToJson(Large instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'thumbnail': instance.thumbnail,
    };
