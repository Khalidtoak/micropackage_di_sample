//@GeneratedMicroModule;ShawarmaPackageModule;package:shawarma/src/di/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:ingredients/ingredients.dart' as _i644;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shawarma/src/repositories/shawarma_repository.dart' as _i840;

class ShawarmaPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.singleton<_i840.ShawarmaRepository>(() => _i840.ShawarmaRepository(
          gh<_i644.BeefService>(),
          gh<_i644.ChickenService>(),
          gh<_i644.SeasoningService>(),
          gh<_i644.PepperService>(),
        ));
  }
}
