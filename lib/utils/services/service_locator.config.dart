// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../network/api_client.dart' as _i972;
import '../../pixabay_ota.dart' as _i516;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i516.ImageRepo>(
        () => _i516.ImageRepo(gh<_i972.ApiClient>()));
    gh.lazySingleton<_i516.VideoRepo>(
        () => _i516.VideoRepo(gh<_i972.ApiClient>()));
    return this;
  }
}
