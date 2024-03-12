void main(){
  // var lista = ['Bruno'];
  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Bruno Yamamoto';
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);
  // print(nome);
  //  print(nome.hashCode);

   var list = ['Bruno'];
   print(list);
   add(list);
   print(list);

   var listaProdutos = ['Prod'];


//errado!!
   calcularCarrinho(listaProdutos);
   var valor = calcularCarrinho(listaProdutos);
   print(valor);
   print(listaProdutos);

}

int calcularCarrinho(List<String> produtos){
  produtos.clear();
  return 10;
}

void funcao2(String nome){
  nome += 'Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

//errado
void funcao(List<String> nomes ){
  print(nomes.hashCode);
  if(nomes.isEmpty){
    nomes.clear();
  }

}


//correto
List<String> add(List<String> nomes){
  var novoNomes = [...nomes];
  novoNomes.add('Buno Yamamoto');
  return novoNomes;
}