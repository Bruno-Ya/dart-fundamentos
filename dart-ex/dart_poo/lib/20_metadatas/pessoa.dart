
import 'dart:io';

import 'package:dart_poo/20_metadatas/fazer.dart';
@Fazer(
  quem: 'Bruno Yamamoto na class', 
  oque: 'tentando ler a anotação de classe',
  )

@gzip
class Pessoa{
  
  @Fazer(
    quem: 'Bruno Yamamoto no atributo', 
    oque: 'tentando ler a anotação do atributo',
    )
  
  
  String? nome;

     @Fazer(
    quem: 'Bruno Yamamoto no método', 
    oque: 'tentando ler a anotação do método',
  
  )
  void fazerAlgo(){}
  

}