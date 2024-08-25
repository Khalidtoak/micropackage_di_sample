import 'package:burger/burger.dart';
import 'package:injectable/injectable.dart';
import 'package:shawarma/shawarma.dart';

@singleton
class FoodRepository {
  final BurgerRepository burgerRepository;
  final ShawarmaRepository shawarmaRepository;

  FoodRepository(this.burgerRepository, this.shawarmaRepository);

  String makeBeefBurger() {
    final burger = burgerRepository.beefBurger(false);
    return burger.toString();
  }

  String makeSpicyChickenShawarma() {
    final spicyShawarma = shawarmaRepository.chickenShawarma(true);
    return spicyShawarma.toString();
  }
}