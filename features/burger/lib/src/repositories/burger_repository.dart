import 'package:ingredients/ingredients.dart';
import 'package:injectable/injectable.dart';

@singleton
class BurgerRepository {
  final BeefService beefService;
  final ChickenService chickenService;
  final SeasoningService seasoningService;
  final PepperService pepperService;
  BurgerRepository(this.beefService, this.chickenService,
      this.seasoningService, this.pepperService);
  Burger beefBurger(bool spicy) {
    final beef = beefService.shred();
    final String seasoning = seasoningService.add();
    if (spicy) {
      final pepper = pepperService.blend();
      return Burger(beef: beef, seasoning: seasoning, pepper: pepper);
    } else {
      return Burger(beef: beef, seasoning: seasoning);
    }
  }

  Burger chickenBurger(bool spicy) {
    final chicken = chickenService.shred();
    final String seasoning = seasoningService.add();
    if (spicy) {
      final pepper = pepperService.blend();
      return Burger(chicken: chicken, seasoning: seasoning, pepper: pepper);
    } else {
      return Burger(chicken: chicken, seasoning: seasoning);
    }
  }
}

class Burger {
  final Beef? beef;
  final String seasoning;
  final Chicken? chicken;
  final Pepper? pepper;

  Burger({this.beef, required this.seasoning, this.chicken, this.pepper});

  @override
  String toString() {
    return "Burger(beef: ${beef.toString()}, seasoning: ${seasoning}, chicken: ${chicken.toString()}, pepper: ${pepper.toString()})";
  }
}
