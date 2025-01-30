import 'package:injectable/injectable.dart';
import '../../pixabay_ota.dart';

import 'service_locator.config.dart';

@InjectableInit(
  initializerName: "init",
  asExtension: true,
  preferRelativeImports: true,
)
void initSL() => di.init();

class ServiceLocator {
  static Future<void> setup({required String baseUrl}) async {
    await register(baseUrl: baseUrl).then(
      (_) {
        initSL();
      },
    );
  }
}
