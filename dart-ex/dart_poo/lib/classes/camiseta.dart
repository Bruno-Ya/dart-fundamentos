//Público - public
//Privado - private



// Características
// Comportamentos

class Camiseta {

  //Atributos de Instância
  String? tamanho = 'G';
  String? _cor = 'Preta';
  String? marca = 'Nike';

  //Atributo de Classe
  static const String nome = 'Camiseta';

  //Método de Classe
  static  String recuperarNome() => nome;


  //encapsulamento de atributo
  String? get cor => _cor;
    set cor (String? cor){
      _Camiseta2();
      if(cor == 'verde'){
        throw Exception('Não pode ser verde');
      }
    }

  //Funções dentro de classes
  // são chamados de métodos
     tipoDeLavagem(){
    if(marca == 'Nike'){
      return 'Não pode lavar na máquina';
    }else{
      return 'Pode lavar na máquina';
    }
  }
}

class _Camiseta2 {
  void recuperarCor(){
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}