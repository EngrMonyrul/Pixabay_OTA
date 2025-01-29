// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosClass _$VideosClassFromJson(Map<String, dynamic> json) => VideosClass(
      large: json['large'] == null
          ? null
          : Large.fromJson(json['large'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Large.fromJson(json['medium'] as Map<String, dynamic>),
      small: json['small'] == null
          ? null
          : Large.fromJson(json['small'] as Map<String, dynamic>),
      tiny: json['tiny'] == null
          ? null
          : Large.fromJson(json['tiny'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideosClassToJson(VideosClass instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'tiny': instance.tiny,
    };
