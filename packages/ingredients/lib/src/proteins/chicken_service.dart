import 'package:injectable/injectable.dart';

@singleton
class ChickenService {
  Chicken shred() {
    return Chicken(shredded: true);
  }
}

class Chicken {
  bool shredded;

  Chicken({required this.shredded});

  @override
  String toString() {
    return "Chicken(shredded: $shredded)";
  }
}