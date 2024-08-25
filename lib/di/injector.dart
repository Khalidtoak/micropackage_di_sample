import 'package:burger/burger.dart';
import 'package:get_it/get_it.dart';
import 'package:ingredients/ingredients.dart';
import 'package:injectable/injectable.dart';
import 'package:micropackage_di_sample/di/injector.config.dart';
import 'package:shawarma/shawarma.dart';

final getIt = GetIt.instance;

@InjectableInit(includeMicroPackages: true,
    ignoreUnregisteredTypesInPackages: ['ingredients'],
    externalPackageModulesBefore: [
      ExternalModule(IngredientsPackageModule),
      ExternalModule(ShawarmaPackageModule),
      ExternalModule(BurgerPackageModule)
    ]
)

Future<GetIt> configureDependencies() async => await getIt.init();
