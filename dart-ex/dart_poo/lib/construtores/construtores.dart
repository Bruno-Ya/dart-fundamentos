import 'package:dart_poo/construtores/pessoa.dart';

void main(){
  
    var pessoa = Pessoa(
      nome: 'Bruno Yamamoto',
      idade: 25,
      sexo: 'Masculino',
    );
    print(pessoa.nome);


  //construtor nomeado
  var pessoaNomeado = 
  Pessoa.semNome(
    idade: 38, 
    sexo: 'Masculino',
    );

    var pessoaFabrica = Pessoa.fabrica('Bruno Yamamoto');

}