
import 'package:dart_poo/interfaces/essencia.dart';

class Ziggy implements Essencia{

  @override
  String marca = 'Ziggy';

  @override
  String sabor = 'Banana Tropical';

  @override
  String descricao = 'Uma fruta tradicional, mas com a cara do Brasil e cheia de sabor! Doce na medida, um toque gelado, um choque de energia, essa é a Banana Tropical!';

  @override
  int peso = 50;


  @override
  int preco() {
    return 15;
  }

tipoDeSabores(){
}

}

