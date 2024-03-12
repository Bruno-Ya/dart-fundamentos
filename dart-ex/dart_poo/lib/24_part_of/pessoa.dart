


import 'package:dart_poo/24_part_of/telefone.dart';
//juntou os 2 arquivos
part 'endereco.dart';
part 'cpf.dart';


class Pessoa {
  String? nome;

  //Composição
  //Quando um atributo de associação é obrigatório
  //Nós estamos falando de composição !!
  _Endereco endereco = _Endereco();
  Cpf cpf = Cpf();


  //Agregação 
  //Quando um atributo de associação não é obrigatório 
  //Nós estamos falando de agregação
  Telefone? telefone;
}

