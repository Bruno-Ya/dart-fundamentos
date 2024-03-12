class Pessoa{
  String? nome;
  // Composição
  //Qnd um atributo de associação é obrigatório
  //Estamos falando de composição!!
  Endereco  endereco = Endereco();
  CPF cpf = CPF();

  // Agregação
  //Quando 1 atributo de associação não é obrigatório
  //Estamos falando de agregação !!
  Telefone? telefone;

  
}

class CPF{}
class Endereco{}
class Telefone{}