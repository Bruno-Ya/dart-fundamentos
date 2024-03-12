import 'dart:async';

Future<void> main() async {

  // final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());
  // aguardando.timeout(
  //tomar cuidado com timeout
  //ele n vai cancelar o futuro
  // Duration(seconds: 1), onTimeout:(){
  //   print('Terminou com TimeOut');
  // },
  // )
  // .then((value){
  //   print('Terminou a execução');
  // })
  // .catchError((erro){
  //   print('Terminou com erro: $erro');
  // });


try{
  final aguardando = await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
}on TimeoutException catch (e){
  print('Finalizou com TimeOut: $e');
}

}

Future<void> inserindoAlgoBemLento(){
  return Future.delayed(Duration(seconds: 3), (){
    print('Terminou o insert ');
    print(DateTime.now().toIso8601String());
  });
}