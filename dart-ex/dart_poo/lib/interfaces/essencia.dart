
// Isso é uma classe abstrata
// Pois tem métodos implementados
abstract class EssenciaAbstrata{
  void preco (){

  }
}


//Isso é uma Interface
//Pois nao tem nenhum método implementado
abstract class Essencia{

  abstract String marca;
  abstract String sabor;
  abstract String descricao;
  abstract int peso;

  int preco();

  static tipoDeSabores() {} 
}