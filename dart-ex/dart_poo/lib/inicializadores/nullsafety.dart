import 'package:dart_poo/inicializadores/cliente.dart';

//TOME MUITO CUIDADO COM O LATE 
//E O ! (FORCE NON NULL)
void main(){
  var cliente = Cliente(nome: 'Bruno');
  cliente.nome = 'Yamamoto';
  cliente.nome = 'Heiji';
  print(cliente.nome); 


//assim é jeito certo de usar a !
//checagem de nullo
  if(cliente.idade != null){
    print(cliente.idade!.toLowerCase());
  }

  // ao inves de usar isso: print(cliente.idade!.toLowerCase()); 
  //usar assim:
  print(cliente.idade?.toLowerCase() ?? '');

  
  
}