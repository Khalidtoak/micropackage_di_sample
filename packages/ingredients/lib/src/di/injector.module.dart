//@GeneratedMicroModule;IngredientsPackageModule;package:ingredients/src/di/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:ingredients/src/pepper/pepper_service.dart' as _i1005;
import 'package:ingredients/src/proteins/beef_service.dart' as _i136;
import 'package:ingredients/src/proteins/chicken_service.dart' as _i545;
import 'package:ingredients/src/seasoning/seasoning_service.dart' as _i291;
import 'package:injectable/injectable.dart' as _i526;

class IngredientsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i291.SeasoningService>(() => _i291.SeasoningService());
    gh.singleton<_i545.ChickenService>(() => _i545.ChickenService());
    gh.singleton<_i136.BeefService>(() => _i136.BeefService());
    gh.singleton<_i1005.PepperService>(() => _i1005.PepperService());
  }
}
