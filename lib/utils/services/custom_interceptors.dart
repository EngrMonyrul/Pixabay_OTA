import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class CustomInterceptors extends InterceptorsWrapper {
  var logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.w("Url :: ${options.baseUrl + options.path}");
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
        "Status Code :: ${err.response?.statusCode}\nStack Trace :: ${err.response?.realUri.path}");
    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data;
    if (data is Map) {
      data.putIfAbsent("statusCode", () => response.statusCode);
      response.data = data;
    }

    logger.i(
        "Url :: ${response.realUri.path}\nData :: ${jsonEncode(response.data)}");
    return handler.next(response);
  }
}
