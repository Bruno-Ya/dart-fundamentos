Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Bruno Yamamoto($id)';

//api de futuro padrao
// so usa pra algo muti específico
Future<String> buscarNomeUsuario(){
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return 'Usuário $nome';
    });
  });
}

//futuro usando async await
// quase 100% usado

Future<String> buscarNomeUsuarioAwait() async{
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuário: $nome';
}

Future<void> main() async {
  print('Inicio');
 final nomeUsuario = await buscarNomeUsuarioAwait();
 print(nomeUsuario);
  print('Fim');
}