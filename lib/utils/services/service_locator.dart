import 'package:injectable/injectable.dart';
import 'package:pixabay_ota/utils/services/service_locator_reg.dart';
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
