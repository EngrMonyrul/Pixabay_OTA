part of '../../pixabay_ota.dart';

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

  di.registerLazySingleton<LocalStorage>(
    () => _LocalStorageImpl(),
  );
}
