import 'package:dart_poo/19_extension/pessoa.dart';
import 'package:dart_poo/19_extension/pessoaSaudacao.dart';
import 'package:dart_poo/19_extension/saudacaoString.dart';


void main(){
  var nome = 'Bruno Yamamoto';

 print(nome.saudacao());

 var p1 = Pessoa(nome: 'Buhh');
 print(p1.saudacao());
}

