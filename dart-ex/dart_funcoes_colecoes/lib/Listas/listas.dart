void main(){
  var numeros = List.generate(10, (index) => index);
//varrer todos eles
  numeros.forEach(printAcademia);

//expand
//Array Bidimencional
  var lista = [
    [1,2],
    [3,4],
  ];
  print(lista[0][1]);

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);


  //any = vai buscar se existe algum João,
  //Se existir, ai ele retorna
  print('.any');
  final listaBusca = ['Bruno', 'João', 'José'];
  if(listaBusca.any((nome) => nome == 'João')){
    print('Tem João');
  }else{
    print('Não tem João');
  }

  //every
  //checar, exemplo:
  //todos os itens de produtos tem q ter preço
  //se 1 deles nao tiver, ta errado
  print('.every');
  final listaBusca2 = ['Bruno', 'João', 'José'];
  if(listaBusca2.every((nome) => nome.contains('o'))){
    print('Todos os nomes contém a letra O');
  }else{
    print('Nem todos os nomes tem a letra O');
  }

  //.sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Bruno', 'João', 'André','José'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Bruno Yamamoto|25',
    'Danilo Yamamoto|26', 
    'Guilherme|18',
    'Fernando|20', 
    'Gabriel|50', 
    'Joaquin|50',
    ];
  var novaListaPaciente = [...listaPacientes];
  novaListaPaciente.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');
  
    final idadePaciente1 = int.parse(pacienteDados1[1]);  
    final idadePaciente2 = int.parse(pacienteDados2[1]); 

    if(idadePaciente1 > idadePaciente2){
      return 1;
    }else if(idadePaciente1 == idadePaciente2){
      return 0;
    }else{
      return -1;
    }
  });
  print(listaPacientes);
  print(novaListaPaciente);

  //CompareTo
  print('.sort com CompareTo');
   var listaPacientes2 = [
    'Bruno Yamamoto|25',
    'Danilo Yamamoto|26', 
    'Guilherme|18',
    'Fernando|20', 
    'Gabriel|50', 
    'Joaquin|50',
     ];
  listaPacientes2.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');
  
    final idadePaciente1 = int.parse(pacienteDados1[1]);  
    final idadePaciente2 = int.parse(pacienteDados2[1]); 

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);



  //Pacientes por função
  var listaPacientes3 = [
    'Bruno Yamamoto|25',
    'Danilo Yamamoto|26', 
    'Guilherme|18',
    'Fernando|20', 
    'Gabriel|50', 
    'Joaquin|50',
     ];
     print('Antes');
     print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}


  void printAcademia(Object valor){
    print(valor);
  }

void funcaoQualquer(List<String> pacientes){

  final localPacientes = [...pacientes];
  localPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');
  
    final idadePaciente1 = int.parse(pacienteDados1[1]);  
    final idadePaciente2 = int.parse(pacienteDados2[1]); 

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);

}