void main(){
  //Parametros Obrigatórios por default

  print('A soma de 10 + 10 é ${somaInteiros(10,10)}');

  //Parametros nomeados
  //Parametros nomeados são nulos por default
  //Parametros nomeados podem ser promovidos para nao nulos(non - null) com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1 : 10.2, numero2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2 : 10.2, numero1: 10.2)}');

  somaDoublesObrigatorios(numero1: 10.2, numero2: 10.2);
  somaDoublesObrigatorios2(numero1: null, numero2: 10);

  print('A chamada com parametros default ${somaDoublesDefault()}');
  print('A chamada com parametros default ${somaDoublesDefault(numero1: 10)}');

  //Parametro Opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 1);

  parametrosNormaisComNomeados(1, nome: 'Bruno', idade: 25);
  parametrosNormaisComNomeados2(1,'Bruno Yamamoto', 37);

}

int somaInteiros(int numero1, int numero2){
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}){
  if(numero1 != null && numero2 != null){
    return numero1 + numero2;
  }
  return 0.0;
  
}

double somaDoublesObrigatorios({ required double numero1, required double numero2}){
  
    return numero1 + numero2;
}

double somaDoublesObrigatorios2({required double? numero1, required double numero2}){
  numero1 ??= 0;
  //if(numero1 == null){
  //  numero1 = 0;
  //}

  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}){
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0] ){
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,{required String nome, required int idade}){

}
void parametrosNormaisComNomeados2(int numero1, int numero2, [String? nome, int? idade]){

}