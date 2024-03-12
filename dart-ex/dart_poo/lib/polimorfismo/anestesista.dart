import 'package:dart_poo/polimorfismo/medico.dart';

class Anestesista extends Medico{
  @override
  void operar(){
    print('Preaparar e esterlizar os equipamentos');
    print('Anestesiar a paciente'); 

  }
}