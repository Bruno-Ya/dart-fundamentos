Future<void> main() async {
  print('Inicio');
  final nomes = ['Rodrigo', 'Luana', 'Guilherme', 'Valentina'];
  

  // não vai funcionar
  //nunca deve ser utilizado
  // nomes.forEach(tratarSaudacao); 

  // for(var nome in nomes){
  //   await tratarSaudacao (nome);
  // }


  // await Future.forEach<String>(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  final nomesFuture = nomes.map((nome) => saudacao(nome),).toList();
  //Future.wait = não te interessa 1 única resposta, ele te da todas as respostas
  final nomesProcessados = await Future.wait(nomesFuture);

  print(nomesProcessados);

  print('Fim');

}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async{
  print('Inicio saudação $nome');
  return Future.delayed(Duration(seconds: 1), (){
    print('Fim saudação $nome');
    return 'Ola $nome';
  });
}