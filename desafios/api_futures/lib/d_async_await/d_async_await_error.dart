Future<void> main() async {
  print('Inicio');

//tratamento do erro
//tudo q esta no try ele pega
// e se tiver algum erro, ele cai no catch
 try{
   final id = await buscarId();
  final nome = await buscarNome(id);
  
  print('O nome é $nome');
  print('Fim');
 }catch (e){
    print('Aconteceu um erro!!');
 }

  
 

}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
  //return 'Bruno Yamamoto($id)';
}