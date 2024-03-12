import 'package:dart_poo/polimorfismo/anestesista.dart';
import 'package:dart_poo/polimorfismo/obstetra.dart';
import 'package:dart_poo/polimorfismo/pediatra.dart';
import 'package:dart_poo/polimorfismo/residenteEmAnestesia.dart';

import 'medico.dart';

void main(){
  //Parto

  var medicos = <Medico>[
    ResidenteEmAnastesia(),
    Obstetra(),
    Pediatra(),
  ];

  //Realizar um parto!!!
  for(var medico in medicos ){
    medico.operar();
  }
}