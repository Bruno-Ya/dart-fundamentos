void main(){

  Future((){
    return 'Valor X';
  }); // => Incompleto

  Future.value(); // => Sucesso

  Future.error(''); // => Erro

}

Future<String> func1() async{
  return Future.value('Qualquer valor') ;
}