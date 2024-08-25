// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:burger/burger.dart' as _i714;
import 'package:get_it/get_it.dart' as _i174;
import 'package:ingredients/ingredients.dart' as _i644;
import 'package:injectable/injectable.dart' as _i526;
import 'package:micropackage_di_sample/repositories/food_repository.dart'
    as _i16;
import 'package:shawarma/shawarma.dart' as _i307;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i644.IngredientsPackageModule().init(gh);
    await _i307.ShawarmaPackageModule().init(gh);
    await _i714.BurgerPackageModule().init(gh);
    gh.singleton<_i16.FoodRepository>(() => _i16.FoodRepository(
          gh<_i714.BurgerRepository>(),
          gh<_i307.ShawarmaRepository>(),
        ));
    return this;
  }
}
