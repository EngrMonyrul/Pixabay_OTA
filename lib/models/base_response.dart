part of '../pixabay_ota.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: "hits")
  T? data;

  @JsonKey(name: "total")
  int? totalItems;

  @JsonKey(name: "totalHits")
  int? totalHits;

  int? statusCode;

  ApiResultType? resultType;

  BaseResponse(
      {this.data,
      this.totalItems,
      this.totalHits,
      this.statusCode,
      this.resultType});

  ApiResultType get type {
    if (statusCode == 200 && data != null) {
      if (data is List) {
        if ((data as List).isEmpty) {
          return ApiResultType.error;
        } else {
          return ApiResultType.success;
        }
      } else {
        return ApiResultType.success;
      }
    } else if (statusCode == 401) {
      return ApiResultType.unauthorized;
    } else {
      return ApiResultType.error;
    }
  }

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) create) {
    final baseResponse = BaseResponse(
      data: create(json["hits"]),
      statusCode: json["statusCode"] ?? 404,
      totalHits: json["totalHits"],
      totalItems: json["total"],
    );

    baseResponse.resultType = baseResponse.type;

    return baseResponse;
  }
}
