void main(){
// Funções Arrow - OK
// Funções Anonimas - ok
// Typedef - ok

var nome = '';
var idade = 1;
 funcaoQualquer(){
  print('Chamou a função');
};

print(funcaoQualquer());

(){
  print('Função Anonima');
}();

//não está chamando a função:
//somaInteiros();


//Está chamando a função
print(somaInteiros(10, 10));

print('Iniciando Chamada');
chamarUmaFuncaoDeUmParametro1((nome) {
  if(nome.isEmpty){
    print('Nome veio vazio');
  }else{
    print(nome);
  }
});

print('Finalizando Chamada');

funx2((nome, {qq, x, x2}) {});
}

//3 partes
//1- tipo de retorno
//2- nome
//3- Parametros (normais, nomeados e opcionais)

//Parametro normal
/*int somaInteiros(int numero1, int numero2){
  return numero1 + numero2;
}
*/

// função arrow 
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro1(Function(String nome) funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Bruno Yamamoto';
    print('Finalizando a função chamarUmaFunçãoDeUmParametro');
    print('Invocando funçãoQueReceNOme');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Bruno Yamamoto';
    print('Finalizando a função chamarUmaFunçãoDeUmParametro');
    print('Invocando funçãoQueReceNOme');
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);

void funx2(FuncaoQueRecebeNomeComplexo nome){}

typedef FuncaoQueRecebeNomeComplexo = void Function(
   String nome,
    {
      required String? x,
      required String? x2,
      required int? qq
    }
      );