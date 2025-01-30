part of '../../pixabay_ota.dart';

Future<void> initPackages(
    {required String baseUrl, required String apiKey}) async {
  await GetStorage.init("pixabay");
  await ServiceLocator.setup(baseUrl: baseUrl);
  di.get<LocalStorage>()
    ..setApiKey(value: apiKey)
    ..setBaseUrl(value: baseUrl);
}

List<dynamic> get initProviders => [
      ChangeNotifierProvider<ImagesProvider>(
        create: (_) => _ImagesProviderImpl(),
      ),
    ];
