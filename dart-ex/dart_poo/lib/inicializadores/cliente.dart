class Cliente {
  late final String nome;
  String? idade;
  Cliente({required this.nome});


  Cliente.comNome({required String nome}){
    nome = nome;
  }
}