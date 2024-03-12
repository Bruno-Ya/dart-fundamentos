import 'package:dart_poo/polimorfismo/medico.dart';

class Obstetra extends Medico{
  @override 
  void operar(){
    print('Preparar o paciente');
    print('Nascimento do bebe');
  }

}