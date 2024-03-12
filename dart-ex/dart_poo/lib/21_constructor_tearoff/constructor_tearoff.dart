void main(){

  final nomes = ['Bruno', 'Danilo', 'Giovana','Lucas'];

  //map = varrer, transformando
  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  // o new é um novo operador 
  // o new aponta para o construtor default
  // final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();

  //construtor nomeado
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }


  
  funcaoQualquer(Pessoa.nome) ;

}


//agora tem uma assinatura
//vai permitir o tipo void, dynamic, Pessoa(a propria classe)
void funcaoQualquer(Pessoa Function (String) funcao){
  funcao('Bruno');
}


class Pessoa{

  String nome;
  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome){
    return Pessoa(nome);
  }

}