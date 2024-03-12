import 'package:dart_poo/18_modificadores/pessoa.dart';

// utilizando o construtor const
//voce na verdade ta fazendo uma otimização
//você ta criando 2 variáveis e apontando para a mesma referência de memória
void main(){
  var p1 = const Pessoa(nome: 'Bruno', idade: 25);
  var p2 = const Pessoa(nome: 'Bruno', idade: 25);

  print(p1 == p2);


}

/*
  1 - p1 = Pessoa(...)
  2 - p2 = Pessoa(...)


  1 - p1 = const Pessoa(...);
  2 - p2 
*/ 