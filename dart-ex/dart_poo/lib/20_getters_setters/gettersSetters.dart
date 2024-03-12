
void main(){

  var pessoa = Pessoa();
  //tendo acesso ao atributo nome
  print(pessoa.nome);
  pessoa.nome = 'Bruno Yamamoto';
  // pessoa.setNome('Bruno Yamamoto');

}


class Pessoa{
  String? _nome;

  //método que retorna nome
  //get é uma função
  //só usa gett e sett se tiver uma regra de negócio
  String? get nome => _nome;

  //o setter não precisa de um tipo de retorno
   set nome(String? nome) {
    if(nome != null && nome.length > 3){
      _nome = nome;
    }
   }
}