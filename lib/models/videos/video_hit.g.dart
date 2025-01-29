// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_hit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoHit _$VideoHitFromJson(Map<String, dynamic> json) => VideoHit(
      id: (json['id'] as num?)?.toInt(),
      pageUrl: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      videos: json['videos'] == null
          ? null
          : VideosClass.fromJson(json['videos'] as Map<String, dynamic>),
      views: (json['views'] as num?)?.toInt(),
      downloads: (json['downloads'] as num?)?.toInt(),
      likes: (json['likes'] as num?)?.toInt(),
      comments: (json['comments'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      user: json['user'] as String?,
      userImageUrl: json['userImageURL'] as String?,
    );

Map<String, dynamic> _$VideoHitToJson(VideoHit instance) => <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageUrl,
      'type': instance.type,
      'tags': instance.tags,
      'duration': instance.duration,
      'videos': instance.videos,
      'views': instance.views,
      'downloads': instance.downloads,
      'likes': instance.likes,
      'comments': instance.comments,
      'user_id': instance.userId,
      'user': instance.user,
      'userImageURL': instance.userImageUrl,
    };
