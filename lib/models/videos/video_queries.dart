import 'package:json_annotation/json_annotation.dart';

part 'video_queries.g.dart';

@JsonSerializable()
class VideoQueries {
  final String? q;
  final String? video_type;
  final String? lang;
  final String? id;
  final String? category;
  final int? min_width;
  final int? min_height;
  final bool? editors_choice;
  final bool? safesearch;
  final String? order;
  final int? page;
  final int? per_page;
  final String? callback;
  final bool? pretty;

  VideoQueries({
    this.q,
    this.video_type,
    this.lang,
    this.id,
    this.category,
    this.min_width,
    this.min_height,
    this.editors_choice,
    this.safesearch,
    this.order,
    this.page,
    this.per_page,
    this.callback,
    this.pretty,
  });

  VideoQueries copyWith({
    String? q,
    String? video_type,
    String? lang,
    String? id,
    String? category,
    int? min_width,
    int? min_height,
    bool? editors_choice,
    bool? safesearch,
    String? order,
    int? page,
    int? per_page,
    String? callback,
    bool? pretty,
  }) {
    return VideoQueries(
      q: q ?? this.q,
      video_type: video_type ?? this.video_type,
      lang: lang ?? this.lang,
      id: id ?? this.id,
      category: category ?? this.category,
      min_width: min_width ?? this.min_width,
      min_height: min_height ?? this.min_height,
      editors_choice: editors_choice ?? this.editors_choice,
      safesearch: safesearch ?? this.safesearch,
      order: order ?? this.order,
      page: page ?? this.page,
      per_page: per_page ?? this.per_page,
      callback: callback ?? this.callback,
      pretty: pretty ?? this.pretty,
    );
  }

  factory VideoQueries.fromJson(Map<String, dynamic> json) =>
      _$VideoQueriesFromJson(json);

  Map<String, dynamic> toJson() => _$VideoQueriesToJson(this);
}
