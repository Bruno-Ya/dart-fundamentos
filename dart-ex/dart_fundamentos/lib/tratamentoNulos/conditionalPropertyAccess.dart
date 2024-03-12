
String? nomeCompleto;
int? idade;
void main(){

  //Null Awere Operator
  //var nomeCompletoLocal = nomeCompleto ?? 'Nome não preenchido';
  
  
  //if convencional
  if(nomeCompleto != null){
    print(nomeCompleto!.toUpperCase());
  }else{
    print('Nome não preenchidp');
  }
  
  //conditional Property Acess
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
  print(idade?.round() ?? 'idade não preenchido');
}