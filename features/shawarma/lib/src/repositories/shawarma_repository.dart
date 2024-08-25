import 'package:ingredients/ingredients.dart';
import 'package:injectable/injectable.dart';

@singleton
class ShawarmaRepository {
  final BeefService beefService;
  final ChickenService chickenService;
  final SeasoningService seasoningService;
  final PepperService pepperService;
  ShawarmaRepository(this.beefService, this.chickenService,
      this.seasoningService, this.pepperService);
  Shawarma beefShawarma(bool spicy) {
    final beef = beefService.shred();
    final String seasoning = seasoningService.add();
    if (spicy) {
      final pepper = pepperService.blend();
      return Shawarma(beef: beef, seasoning: seasoning, pepper: pepper);
    } else {
      return Shawarma(beef: beef, seasoning: seasoning);
    }
  }

  Shawarma chickenShawarma(bool spicy) {
    final chicken = chickenService.shred();
    final String seasoning = seasoningService.add();
    if (spicy) {
      final pepper = pepperService.blend();
      return Shawarma(chicken: chicken, seasoning: seasoning, pepper: pepper);
    } else {
      return Shawarma(chicken: chicken, seasoning: seasoning);
    }
  }
}

class Shawarma {
  final Beef? beef;
  final String seasoning;
  final Chicken? chicken;
  final Pepper? pepper;

  Shawarma({this.beef, required this.seasoning, this.chicken, this.pepper});

  @override
  String toString() {
    return "Shawarma(beef: ${beef.toString()}, seasoning: $seasoning, chicken: ${chicken.toString()}, pepper: ${pepper.toString()})";
  }
}
