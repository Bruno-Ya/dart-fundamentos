void main(){


//O mapa é uma representação de Chave: Valor
  final paciente = <String, String>{
    'nome': 'Bruno Yamamoto',
    'curso': 'Academia do Flutter',
  };

//O mapa pode ser nulo mas se for criado deve conter chaves
//e o valor não nullos
  Map<String, String>? pacienteNullSafety ;

  //O mapa e o valor não podem ser nulos mas a chave pode ser nulla
 var pacienteNullSafety2 = <String?, String> {
    null:'Bruno',
  };
  

  //O mapa e a chave não podem ser nulas mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?> {
    'nome': null,
  };


  var produtos = <String, String>{};

  //Só será adicionado se a chave não existir
    produtos.putIfAbsent('nome', () => 'Cerveja');
    produtos.putIfAbsent('nome', () => 'Refrigerante');
    print(produtos);

    produtos.update('nome', (value) => 'Refrigerante');
    //não pode atualizar uma chave q nao existe
    //produtos.update('nome2', (value) => 'Refrigerante');
    print(produtos);
    produtos.update('preço', (value) => '10', ifAbsent: () => '10');


    //Recuperando o valor
    print('Produto ${produtos['nome']}');
    print('Preço ${produtos['preço']}');


    //varrer todos os itens 
    ///forEach só deve ser usado para nenhuma requisição asyncrona
    produtos.forEach((key, value) { 
      print('Chave $key: $value ');
    });


    //Fazer algum processo asyncrono dentro dele
    for(var entry in produtos.entries){
      print('Chave: ${entry.key}: ${entry.value}');
    }

    for(var key in produtos.keys){
      print('Chave: $key');
    }
    
    for(var value in produtos.values){
      print('Valores: $value');
    }

    var novoMapaProdutos = produtos.map((key, value) {
      return MapEntry('${key}_nova', value.toUpperCase());
    });
    print(novoMapaProdutos);

    var mapa = <String, Object> {
      'nome':'Bruno Yamamoto',
      'cursos': [
        {
        'nome': 'Academia do Flutter',
        'descrição': 'Melhor curso de flutter do Brasil',
       },
       {
        'nome': 'Arquiteto Flutter',
        'descrição': 'Melhor curso de flutter do Brasil',
       },
      ]
    };

    print(mapa['cursos']);
}