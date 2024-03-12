import 'package:dart_poo/19_extension/pessoa.dart';

extension PessoaSaudacao on Pessoa{
  String saudacao(){
    return 'Olá $nome bem vindo a academia do Flutter';
  }
}