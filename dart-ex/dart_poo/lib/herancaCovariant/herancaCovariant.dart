import 'package:dart_poo/herancaCovariant/banana.dart';
import 'package:dart_poo/herancaCovariant/fruta.dart';
import 'package:dart_poo/herancaCovariant/humano.dart';
import 'package:dart_poo/herancaCovariant/macaco.dart';

void main(){

  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}