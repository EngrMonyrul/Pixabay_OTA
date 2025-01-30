import 'package:json_annotation/json_annotation.dart';

part 'photo_queries.g.dart';

@JsonSerializable()
class PhotoQueries {
  final String? q;
  final String? image_type;
  final String? lang;
  final String? id;
  final String? orientation;
  final String? category;
  final String? min_width;
  final String? min_height;
  final String? colors;
  final bool? editors_choice;
  final bool? safesearch;
  final String? order;
  final int? page;
  final int? per_page;
  final String? callback;
  final bool? pretty;

  PhotoQueries({
    this.q,
    this.image_type,
    this.lang,
    this.id,
    this.orientation,
    this.category,
    this.min_width,
    this.min_height,
    this.colors,
    this.editors_choice,
    this.safesearch,
    this.order,
    this.page,
    this.per_page,
    this.callback,
    this.pretty,
  });

  PhotoQueries copyWith({
    String? key,
    String? q,
    String? image_type,
    String? lang,
    String? id,
    String? orientation,
    String? category,
    String? min_width,
    String? min_height,
    String? colors,
    bool? editors_choice,
    bool? safesearch,
    String? order,
    int? page,
    int? per_page,
    String? callback,
    bool? pretty,
  }) {
    return PhotoQueries(
      q: q ?? this.q,
      image_type: image_type ?? this.image_type,
      lang: lang ?? this.lang,
      id: id ?? this.id,
      orientation: orientation ?? this.orientation,
      category: category ?? this.category,
      min_width: min_width ?? this.min_width,
      min_height: min_height ?? this.min_height,
      colors: colors ?? this.colors,
      editors_choice: editors_choice ?? this.editors_choice,
      safesearch: safesearch ?? this.safesearch,
      order: order ?? this.order,
      page: page ?? this.page,
      per_page: per_page ?? this.per_page,
      callback: callback ?? this.callback,
      pretty: pretty ?? this.pretty,
    );
  }

  factory PhotoQueries.fromJson(Map<String, dynamic> json) =>
      _$PhotoQueriesFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoQueriesToJson(this);
}
