import 'package:dart_poo/10_mixin/artista.dart';

import 'package:dart_poo/10_mixin/dancar.dart';

class Joao extends Artista with Dancar {

  Object? cantar() {
    return 'Canta Rock';
  }
   
}

