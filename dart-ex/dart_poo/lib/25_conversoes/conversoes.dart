// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_poo/14_assignmentOperators/assignment_operators.dart';
import 'package:dart_poo/25_conversoes/aluno.dart';
import 'package:dart_poo/25_conversoes/curso.dart';

void main(){

  //converter uma coisa para outra
  var frutas = [
    Fruta('Banana'),
    Fruta('Abacaxi'),
    Fruta('Laranja'),
  ];


   var frutasMap = [
    {'nome': 'Banana'},
    {'nome': 'Abacaxi'},
    {'nome': 'Laranja'},
  ];
  // List<Suco> sucos = [];
  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);
  // }

//pq o toList?
//pq o map vai me retornar 1 iterable e nao uma lista
// por isso o toList
  var sucos = frutas.map((fruta){
    return Suco(sabor: fruta.nome);
  }).toList();

  var sucos2 = frutasMap.map((frutaMap){
    return Suco(sabor: frutaMap['nome'] ?? 'Sem sabor');
  });
  print(sucos);
  print(sucos2);


  var alunoAdf = <String, Object>{
    'nome': 'Bruno Yamamoto',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil'
      },
            {
        'nome': 'Imersao GetX',
        'descricao': 'Imersão GetX'
      },
            {
        'nome': 'Imersao Código Limpos',
        'descricao': 'Imersão em Código Limpo'
      },
    ]
  };
  //transformei um mapa String Strin em um objeto (curso)
  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();
  final nomeAluno = alunoAdf['nome'] as String;
  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String sabor;
  Suco({
    required this.sabor,
  });
  @override
  String toString(){
    return 'Suco sabor $sabor';
  }
}

class Fruta{
  String nome;
  Fruta(this.nome);
}