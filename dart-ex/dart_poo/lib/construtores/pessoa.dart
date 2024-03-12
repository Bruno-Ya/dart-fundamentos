class Pessoa {

  String? nome;
  int? idade;
  String? sexo;


  //construtor default
  //todas as classes tem automaticamente
  //Pessoa();

  Pessoa({
    required this.nome, 
    required this.idade, 
    required this.sexo,
    });  

  Pessoa.semNome({
    required this.idade, 
    required this.sexo,
    });
    
  Pessoa.vazia();

  //Construtor do tipo factory
  //é utilizado quando temos uma regra de negócio
  //para criação da nossa classe!
  factory Pessoa.fabrica(String nomeConstr){
    var nome = '${nomeConstr}_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;

    return pessoa;
  }
  
}