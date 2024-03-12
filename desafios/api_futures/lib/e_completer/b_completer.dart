import 'dart:async';

Future<void> main() async {
  //callback
  final usuario = UsuarioRepository();
  usuario.salvarComum((sucess) {
    print('Sucesso $sucess');
  }, (error) {
    print('Erro $error');
  
  });

  //API de Futuro
  try{
  final sucesso = await usuario.salvarCompleter();
  print('Sucesso Completer $sucesso');
  }catch (e){
    print('Erro Complter: $e');
  }
}

class UsuarioRepository{

  void salvarComum(void Function (String ) callbackSucess, void Function(String) callbackError){
    Timer(Duration(seconds: 2), (){
      try{
        throw Exception();
      callbackSucess('Usuário salvo com sucesso');

      }catch (e){
        callbackError('Erro');
      }
    });
  }

  Future<String> salvarCompleter(){
    final completer = Completer<String>();
    Timer(Duration (seconds: 2), (){
      try{
        completer.complete('Usuário salvo com sucesso');
      }catch (e){
        completer.completeError('Erro');
      }
    });
    return completer.future;
  }
}