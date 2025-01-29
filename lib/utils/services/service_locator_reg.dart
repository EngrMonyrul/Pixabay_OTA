import 'package:dio/dio.dart';
import 'package:pixabay_ota/network/api_client.dart';
import 'package:pixabay_ota/pixabay_ota.dart';
import 'package:pixabay_ota/utils/services/custom_interceptors.dart';

Future<void> register({required String baseUrl}) async {
  di.registerLazySingleton<ApiClient>(
    () => ApiClient(
      Dio(
        BaseOptions(
          contentType: "application/json",
          baseUrl: baseUrl,
        ),
      )..interceptors.add(
          CustomInterceptors(),
        ),
    ),
  );
}
