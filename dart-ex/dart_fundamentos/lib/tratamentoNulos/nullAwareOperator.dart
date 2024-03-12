// ignore_for_file: file_names

String? nome;

void main(){
  var nomeCompleto = ((nome != null) ? '${nome!}Bruno' : 'Bruno Yamamoto');
  print(nomeCompleto);

  String nomeCompleto2;

  if(nome != null){
    nomeCompleto2 = '${nome!}Yamamoto';
  }else{
    nomeCompleto2 = 'Bruno Yamamoto';
  }

  print(nomeCompleto2);

  var nomeLocal = nome;
  if(nomeLocal == null){
    nomeLocal = 'Bruno';
  }
    var nomeCompleto3 = '${nomeLocal}Bruno';
    print(nomeCompleto3);
}