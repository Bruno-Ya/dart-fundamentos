
void main(){
  // ? = Nullable (Aceita Nulo)
  // Sem nada Padrão = non-null (não aceita nulo)

  //Não aceita / pode ser nulo
  var nomes = [];

  //Aceita nulo
  List<String>? nomesNulos;

  //! Lista não pode ser nula e nem os itens
  List<String> nomesInternosAceitaNulos = ['Bruno'];
  var nomesInternosAceitaNulos = ['Bruno'];

  //Lista não pode ser nula, mas os itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Bruno', null, 'Yamamoto', null];
  var nomesInternosAceitaNulos1 = <String?>['Bruno', null, 'Yamamoto', null];


  //Lista pode ser nula e os itens tbm
  //Precisa ser dessa forma
  List<String?>? nomesInternosAceitaNulos2 = null;
  
}