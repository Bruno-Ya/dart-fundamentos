
import 'package:dart_poo/10_mixin/joao.dart';

void main(){

  var joao = Joao();

  print(''' 
    João: 
      Habilidade: ${joao.habilidade()}
      Cantar: ${joao.cantar()}
      Dançar: ${joao.dancar()}
  ''');

  //joao é um Artista
  //joao é um cantar
  //joao é um dançar
  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}