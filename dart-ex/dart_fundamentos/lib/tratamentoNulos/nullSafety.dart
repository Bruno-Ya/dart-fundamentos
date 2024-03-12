
// ignore_for_file: unnecessary_null_comparison

//variavel superior
String? nomeSuperior;

void main(){
  String nome = '';

  String? nomeNula;

  if(nomeNula ==  null){
    nomeNula!.isEmpty;
  }

  nome.isEmpty;


  //variáveis locais
  //transformando a variavel superior para uma local
  var nomeLocal = nomeSuperior;
  if(nomeLocal != null){
    nomeLocal.isEmpty;
  }

  nomeSuperior = '';
  nomeSuperior!.isEmpty;
}