void main(){

  //para trabalhar com processos assincronos, 
  //obrigatoriamente precisamos trabalhar com a nossa API de Futuro


  final nome = metodoAssincronoSemAsync();

  nome.then(print).catchError(print);

  metodoAssincronoVoid().whenComplete(() => print('Finalizou o void'));
}

//declarar um método
Future<String>metodoAssincronoSemAsync(){
  return Future.value('Bruno Yamamoto');
}

Future<String> metodoAssincrono() async{
  return 'Bruno Yamamoto';
}

Future<void> metodoAssincronoVoid() async{

}