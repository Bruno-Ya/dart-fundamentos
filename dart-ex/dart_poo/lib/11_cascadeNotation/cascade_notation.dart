
void main(){


   Pessoa()
  ..nome = 'Bruno Yamamoto'
  ..email = 'brunoyamamoto2@gmail.com'
  ..site = 'academiadoflutter.com.br'
  ..printPessoa();

  // pessoa.nome = 'Bruno Yamamoto';
  // pessoa.email = 'brunoyamamoto2@gmail.com';
  // pessoa.site = 'academiadoflutter.com.br';


  var mapa = <String, String> {}
  ..putIfAbsent('nome', () => 'Bruno Yamamoto')
  ..putIfAbsent('email', () => 'brunoyamamoto2@gamil.com')
  ..putIfAbsent('site', () => 'academiadoflutter.com.br');

  // print('''
  //   Pessoa:
  //     Nome: ${pessoa.nome}
  //     E-mail: ${pessoa.email}
  //     Site: ${pessoa.site}
  // ''');
  
  }

class Pessoa{
  String? nome;
  String? email;
  String? site;


  void printPessoa(){
     print('''
    Pessoa:
      Nome: $nome
      E-mail: $email
      Site: $site
  ''');
  }

}