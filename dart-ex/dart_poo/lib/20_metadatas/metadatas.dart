
import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/fazer.dart';
import 'package:dart_poo/20_metadatas/pessoa.dart';

void main(){

  final p1 = Pessoa();
  //fazer a leitura da instância
  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;

  for (var annotation in classMirror.metadata) {
    var instanceAnnotation = annotation.reflectee;
    if(instanceAnnotation is Fazer){
      print('CLASS!');
      print('QUEM: ${instanceAnnotation.quem}');
      print('O QUE: ${instanceAnnotation.oque}');
    }
  }

  
  for (var declarationMirror in classMirror.declarations.values) { 
    if(declarationMirror is VariableMirror){
      for (var annotation in declarationMirror.metadata) { 
  
    var instanceAnnotation = annotation.reflectee;
    if(instanceAnnotation is Fazer){
      print('VARIÁVEIIISS!!!');
      print('QUEM: ${instanceAnnotation.quem}');
      print('O QUE: ${instanceAnnotation.oque}');
    
  }
      }
    }else if(declarationMirror is MethodMirror){
      for (var annotation in declarationMirror.metadata) {
    var instanceAnnotation = annotation.reflectee;
    if(instanceAnnotation is Fazer){
      print('MÉTODOS!!!');
      print('QUEM: ${instanceAnnotation.quem}');
      print('O QUE: ${instanceAnnotation.oque}');
    }
  }
    }
  }
}