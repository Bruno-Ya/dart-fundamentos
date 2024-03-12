void main(){
  print('Init Main');
  //sync = vai executar a função sincronamente
  //ele não vai esperar a próxima interação do Event Loop, para executar essa função
  //A próxima interação do Event Loop, ele vai esperar para executar o then
  //A função em si, vai ser executada na mesma ordem, como se fosse síncrona
  Future<String>.sync((){
    print('Função Future executada ');
    return ' Resultado Future';

  }).then(print);

  print('Fim Main');
}