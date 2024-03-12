void main(){
  var numeroLista = <int?>[];
  numeroLista.add(1);
  numeroLista.add(2);
  numeroLista.add(3);
  numeroLista.add(3);
  numeroLista.add(null);
  numeroLista.add(1);
  numeroLista.add(2);
  print(numeroLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);
  
  print('.toSet()');
  print(numeroLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('.difference()');
  print(numeros1.difference(numeros2));

  print('.union');
  print(numeros1.union(numeros2));

  print('.intersection');
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Bruno', 'Luana', 'José'};
  var nomes2 = {'Bruno', 'Joaquim', 'Guilherme'};
  print(nomes1.intersection(nomes2));

  print('.lookup');
  print(numeros1.lookup(1));
  print(numeros1.lookup(99));
  print(nomes1.lookup('Bruno'));
  print(nomes1.lookup('bruno'));
}