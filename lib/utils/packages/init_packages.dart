part of '../../pixabay_ota.dart';

Future<void> initPackages({required String baseUrl}) async {
  await ServiceLocator.setup(baseUrl: baseUrl);
}

List<dynamic> get initProviders => [
      ChangeNotifierProvider<ImagesProvider>(
        create: (_) => _ImagesProviderImpl(),
      ),
    ];
