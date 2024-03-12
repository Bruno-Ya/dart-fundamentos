void main(){
  var numeros = List.generate(10, (index) => index);

  //for(var i = 0; i < numeros.length; i++){
    //if(i == 5){
      // continue;
    //}
    //print(numeros[i]);
  //}

  numeros.where((numero) => numero != 5)
  .forEach((numero) => print(numero) );

  final numerosAte6 = numeros
  .takeWhile((numero) => numero < 7)
  .where((numero) => numero != 5)
  .toList();
  print(numeros[1]);
  print(numerosAte6);

   final numerosRemoverAte5 = numeros
  .skipWhile((numero) => numero < 6)
  .toList();
    print(numerosRemoverAte5);

  final nomes = ['Bruno', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) {
    if(nome != 'Arthur'){
      return true;
    }else{
      return false;
      }
  });

  print(nomesSkip);

  var numeroStrList = numeros.map((numero){
    return 'numero é $numero';
  }).toList();
  print(numeroStrList);

  var numeroList = numeros.map((numero){
    return numero + 10;
  }).toList();
  print(numeroList);

  final numeroRevertido = numeros.reversed.toList();
  print(numeroRevertido);

   final nomesRevertidos = nomes.reversed.toList();
  print(nomesRevertidos);
}