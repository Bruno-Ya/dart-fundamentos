import 'package:dart_poo/herancaCovariant/banana.dart';
import 'package:dart_poo/herancaCovariant/mamifero.dart';

class Macaco extends Mamifero{
  @override
  void comer (Banana fruta) {
    print(fruta.tipo);
  }
}