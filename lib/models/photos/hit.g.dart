// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hit _$HitFromJson(Map<String, dynamic> json) => Hit(
      id: (json['id'] as num?)?.toInt(),
      pageUrl: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      previewUrl: json['previewURL'] as String?,
      previewWidth: (json['previewWidth'] as num?)?.toInt(),
      previewHeight: (json['previewHeight'] as num?)?.toInt(),
      webformatUrl: json['webformatURL'] as String?,
      webformatWidth: (json['webformatWidth'] as num?)?.toInt(),
      webformatHeight: (json['webformatHeight'] as num?)?.toInt(),
      largeImageUrl: json['largeImageURL'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
      imageSize: (json['imageSize'] as num?)?.toInt(),
      views: (json['views'] as num?)?.toInt(),
      downloads: (json['downloads'] as num?)?.toInt(),
      collections: (json['collections'] as num?)?.toInt(),
      likes: (json['likes'] as num?)?.toInt(),
      comments: (json['comments'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      user: json['user'] as String?,
      userImageUrl: json['userImageURL'] as String?,
    );

Map<String, dynamic> _$HitToJson(Hit instance) => <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageUrl,
      'type': instance.type,
      'tags': instance.tags,
      'previewURL': instance.previewUrl,
      'previewWidth': instance.previewWidth,
      'previewHeight': instance.previewHeight,
      'webformatURL': instance.webformatUrl,
      'webformatWidth': instance.webformatWidth,
      'webformatHeight': instance.webformatHeight,
      'largeImageURL': instance.largeImageUrl,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'imageSize': instance.imageSize,
      'views': instance.views,
      'downloads': instance.downloads,
      'collections': instance.collections,
      'likes': instance.likes,
      'comments': instance.comments,
      'user_id': instance.userId,
      'user': instance.user,
      'userImageURL': instance.userImageUrl,
    };
