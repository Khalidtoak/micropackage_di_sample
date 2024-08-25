import 'package:injectable/injectable.dart';

@singleton
class BeefService {
  Beef shred() {
    return Beef(shredded: true);
  }
}

class Beef {
  bool shredded;

  Beef({required this.shredded});

  @override
  String toString() {
    return "Beef(shredded: ${shredded})";
  }
}