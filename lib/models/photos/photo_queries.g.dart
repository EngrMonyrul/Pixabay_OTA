// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoQueries _$PhotoQueriesFromJson(Map<String, dynamic> json) => PhotoQueries(
      q: json['q'] as String?,
      image_type: json['image_type'] as String?,
      lang: json['lang'] as String?,
      id: json['id'] as String?,
      orientation: json['orientation'] as String?,
      category: json['category'] as String?,
      min_width: json['min_width'] as String?,
      min_height: json['min_height'] as String?,
      colors: json['colors'] as String?,
      editors_choice: json['editors_choice'] as bool?,
      safesearch: json['safesearch'] as bool?,
      order: json['order'] as String?,
      page: (json['page'] as num?)?.toInt(),
      per_page: (json['per_page'] as num?)?.toInt(),
      callback: json['callback'] as String?,
      pretty: json['pretty'] as bool?,
    );

Map<String, dynamic> _$PhotoQueriesToJson(PhotoQueries instance) =>
    <String, dynamic>{
      'q': instance.q,
      'image_type': instance.image_type,
      'lang': instance.lang,
      'id': instance.id,
      'orientation': instance.orientation,
      'category': instance.category,
      'min_width': instance.min_width,
      'min_height': instance.min_height,
      'colors': instance.colors,
      'editors_choice': instance.editors_choice,
      'safesearch': instance.safesearch,
      'order': instance.order,
      'page': instance.page,
      'per_page': instance.per_page,
      'callback': instance.callback,
      'pretty': instance.pretty,
    };
