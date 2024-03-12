// ignore_for_file: file_names

import 'package:dart_fundamentos/tratamentoNulos/conditionalPropertyAccess.dart';

void main(){
  final nome = 'Bruno Yamamoto';
  var subStringNome = nome.substring(6);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 6);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);
  if(sexoSigla == 'M'){
    print('Olá seu sexo é Masculino');
  }

  if(sexoSigla.startsWith('M')){
    print('Olá seu sexo é Masculino');
  }

  if(nome.toLowerCase().contains('Yamamoto')){
    print('É da familia Yamamoto');
  }

  //interpolação

  var primeiroNome = 'Bruno';
  var segundoNome = 'Yamamoto';

  var saudacao = 'Olá ${primeiroNome.toLowerCase()} $segundoNome Seja Muito Bem Vindo';
  print(saudacao);

  print('Soma de 2 + 2 é ${2 + 2}');
  

  var paciente = 'Bruno Yamamoto|25|Recém formado|SP';

  var dadospaciente = paciente.split('|');
  print(dadospaciente);
  print(dadospaciente[0]);
  print(dadospaciente[1]);
  print(dadospaciente[2]);
  print(dadospaciente[3]);

  for(var dado in dadospaciente){
    print(dado);
  }
  

  var pacientes = [
  'Bruno Heiji Yamamoto|25|Recém formado|SP',
  'Giovana Hikari Naka|23|Analista de Suporte|SP',
  'Danilo Hitoshi Yamamoto|26|Comerciante',
  ];

  for(paciente in pacientes){
    var dadospaciente = paciente.split('|');
    var nomeCompleto =  dadospaciente[0];
    var nomes = nomeCompleto.split(' ');
    print('${nomes.first} ${nomes.last} ');
  }
}