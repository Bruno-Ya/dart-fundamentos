// ignore_for_file: unused_local_variable

String? nome;

void main(){

  var sobrenome = 'Yamamoto';

  // var nomeCompleto = ((nome != null) ? '${nome!}Bruno' : 'Bruno Yamamoto');
  //                  se nome for diferente de null, entao coloca o nome
  //                  se nao ele coloca Bruno, ai ele concatena com sobrenome
  var nomeCompleto = ((nome ?? 'Bruno') + sobrenome);

  String? nomeCompleto2;
  
  print(nomeCompleto2 ?? 'Bruno Yamamoto');
}