
import 'package:dart_poo/interfaces/essencia.dart';
import 'package:dart_poo/interfaces/onix.dart';
import 'package:dart_poo/interfaces/ziggy.dart';

void main(){
  var ziggy = Ziggy();
  var onix = Onix();

  // print(ziggy.preco());
  // print(onix.preco());
  printarDadosDaEssencia(ziggy);
  printarDadosDaEssencia(onix);
}

void printarDadosDaEssencia(Essencia essencia){
  print('''
    Essência:
      Marca: ${essencia.runtimeType}
      Sabor: ${essencia.sabor}
      Descrição: ${essencia.descricao}
      Peso: ${essencia.peso}g
      Preço: ${essencia.preco()},00
''');
}