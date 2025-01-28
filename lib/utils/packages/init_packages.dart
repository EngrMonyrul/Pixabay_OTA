part of '../../pixabay_ota.dart';

Future<void> initPackages() async {}

List<dynamic> get initProviders => [
      ChangeNotifierProvider<ImagesProvider>(
        create: (_) => _ImagesProviderImpl(),
      ),
    ];
