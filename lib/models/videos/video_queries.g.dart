// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoQueries _$VideoQueriesFromJson(Map<String, dynamic> json) => VideoQueries(
      q: json['q'] as String?,
      video_type: json['video_type'] as String?,
      lang: json['lang'] as String?,
      id: json['id'] as String?,
      category: json['category'] as String?,
      min_width: (json['min_width'] as num?)?.toInt(),
      min_height: (json['min_height'] as num?)?.toInt(),
      editors_choice: json['editors_choice'] as bool?,
      safesearch: json['safesearch'] as bool?,
      order: json['order'] as String?,
      page: (json['page'] as num?)?.toInt(),
      per_page: (json['per_page'] as num?)?.toInt(),
      callback: json['callback'] as String?,
      pretty: json['pretty'] as bool?,
    );

Map<String, dynamic> _$VideoQueriesToJson(VideoQueries instance) =>
    <String, dynamic>{
      'q': instance.q,
      'video_type': instance.video_type,
      'lang': instance.lang,
      'id': instance.id,
      'category': instance.category,
      'min_width': instance.min_width,
      'min_height': instance.min_height,
      'editors_choice': instance.editors_choice,
      'safesearch': instance.safesearch,
      'order': instance.order,
      'page': instance.page,
      'per_page': instance.per_page,
      'callback': instance.callback,
      'pretty': instance.pretty,
    };
