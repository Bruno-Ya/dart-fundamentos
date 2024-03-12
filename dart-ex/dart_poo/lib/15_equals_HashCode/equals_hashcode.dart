
// 1- nome = 'Bruno'
// 2- nome2 = 'Bruno'
//
//  Sempre q implementar o equals
//  Obritariamente tem q reimplementar o hashcode
//






import 'package:dart_poo/15_equals_HashCode/pessoa.dart';

void main(){

    var p1 = Pessoa(nome: 'Bruno', email: 'brunoyamamoto2@gmail.com');
    var p2 =  Pessoa(nome: 'Bruno', email: 'brunoyamamoto2@gmail.com');

    print(p1.hashCode);
    print(p2.hashCode);

    if(p1 == p2){
        print('É igual');
    }else{
      print('Não é igual');
    }
}

/***
 * 1- p1 = Pessoa()
 * 2- p2 = Pessoa()
 * p1 e p2 estao na msm referencia de memória?
 * Não, p1 está na referencia 1 e p2 na 2, cada 1 apontando para uma instancia
 */