import 'package:injectable/injectable.dart';

@singleton
class PepperService {
  Pepper blend() {
    return Pepper(blended: true);
  }
}

class Pepper {
  final bool blended;

  Pepper({required this.blended});

  @override
  String toString() {
    return "Pepper(blended: ${blended}";
  }
}