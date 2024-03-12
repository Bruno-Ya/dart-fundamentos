
import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main(){
  var c1 = Cliente(nome: 'Bruno', telefone: '1234513214' );
  var c2 = Cliente(nome: 'Giovana', telefone: '1234513214' );
  var c3 = Cliente(nome: 'Danilo', telefone: '1234513214' );
  var c4 = Cliente(nome: 'Suzana', telefone: '1234513214' );

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  // lista.sort((c1,c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}