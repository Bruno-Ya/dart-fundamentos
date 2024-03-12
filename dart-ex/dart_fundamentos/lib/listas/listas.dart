
void main(){

  final numeros = [1, 2, 3, 4];

  print(numeros);
  numeros.add(1);
  print(numeros);

  //                0       1         2           3
  final nomes = ['Bruno', 'João', 'Giovana', 'Guilherme'];
  print(nomes);
  nomes.add('Yamamoto');
  nomes.addAll(['Bruno2', 'Luana2', 'Maria2']);
  print(nomes);
  print(nomes[0]);
  print(nomes[2]);
  print('Adicionando José a lista');
  nomes.insert(0, 'José');
  nomes.insert(3, 'José3');
  print(nomes);
  print(nomes[0]);

  nomes.remove('José3');
  print(nomes);

  nomes.removeWhere((nome){
    print('Nome procurado $nome');
    if(nome == 'Bruno'){

      return true;
    }else{
      return false;
    }
  });
  print(nomes);

  //print(nomes[0]); <- Substituir isso por
  print(nomes.first);

  //print(nomes[nomes.length -1]); <- Substituir isso por
  print(nomes.last);
  print('Buscando primeiro nome');
  var primeiroNome = nomes.firstWhere((nome) {
    if(nome == 'Maria'){
      return true;
    }else{
      return false;
    }
  });
  print(primeiroNome);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => 'indice ${index + 1}' );
  print(stringsGerados);

  final repeticoes = List.filled(10, 'Bruno');
  print(repeticoes);


  
  final numerosGeradosParaCalculo = List.generate(100, (index) => 'indice ${index + 1}' );
  //1...100
  //0 + 1 = 1
  //1 + 2 = 3
  //3 + 3 = 6
  //6 + 4 = 10
  var soma = numerosGeradosParaCalculo.fold<int>(
    0,
     (previousValue, numero) => previousValue = previousValue + numero,
     );
  print(soma);

  //spread operator (...)
  var listaNumerosSpread = [4, 5, 6];
  var listaNumerosSpreadB = [1, 2, 3, ... listaNumerosSpread];
  print(listaNumerosSpreadB);

  //Collection if
  var promocaoAtiva = true;

  var produtos = [
    'Cerveja',
    'Refrigerante',
    if(promocaoAtiva)'Suco de laranja'
  ];

  print(produtos);

  //Collection for

  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for(var i in listaInts) '#$i'
  ];
  print(listaStrings);
  var string = listaStrings.join('->');
  print(string);



}