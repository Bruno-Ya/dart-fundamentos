import 'package:dart_poo/heranca/cachorro.dart';

void main (){
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());

  print('''
    Cchorro:
      Tamanha: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
''');
}