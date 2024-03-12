
import 'package:dart_poo/interfaces/essencia.dart';
import 'package:dart_poo/interfaces/onix.dart';
import 'package:dart_poo/interfaces/ziggy.dart';


// Variáveis do tipo Superior e atributos de classe
//não sao auto promovidas para o tipo checado
Essencia ziggyEssencia2 = Ziggy();

void main(){


  var ziggy = Ziggy();
  var onix = Onix();

  Essencia ziggyEssencia = Ziggy();

  // Qunado checamos se a variável é(is) de um tipo
  // Caso ela seja, o Dart vai automaticamente converter
  //essa instancia para a classe do tipo!!
  if(ziggyEssencia is Ziggy){
    ziggyEssencia.tipoDeSabores();
  }

  var tipoDeSabores = (ziggyEssencia as Ziggy).tipoDeSabores();
  print('Tipode de Sabores $tipoDeSabores');
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
      Tipo de Sabore: ${Essencia is  Ziggy ? Essencia.tipoDeSabores() : 'Não disponivel'}
''');
}