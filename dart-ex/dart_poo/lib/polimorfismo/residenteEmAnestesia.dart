import 'package:dart_poo/polimorfismo/anestesista.dart';

class ResidenteEmAnastesia extends Anestesista{
  @override
  void operar(){
    //sobescrever informações
    //ou agregar informações
    super.operar();
    print('Limpar e desmontar os equipamentos');
  }
}