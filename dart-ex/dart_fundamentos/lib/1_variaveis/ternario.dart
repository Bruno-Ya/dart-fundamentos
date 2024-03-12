
void main(){
  final idade = 12;

  if(idade >= 18){
    print("Maior de Idade");
  }else{
    print("Menor de Idade");
  }

  //ternarios
  //(condição) faça algo : outra coisa

  final eMaiorDeIdade = idade >= 18 ? true : false;

  print("É maior de idade? $eMaiorDeIdade"); 
}