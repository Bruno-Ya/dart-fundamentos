// ignore_for_file: public_member_api_docs, sort_constructors_first


/*
  Pessoa
    nome: Bruno
    email: brunoyamamoto2@gmail.com

  criar outra pessoa
  Pessoa
    nome: Guilherme
    email: guiherme@gmail.com
*/
class Pessoa {
  String nome;
  String email;
  Pessoa({
    required this.nome,
    required this.email,
  });


// 1 jeito de fazer
//se o objeto não é uma pessoa, ja retorna falso
// @override
//   bool operator == (Object other){
//     if(identical(this, other)) return true;
      
//     if(other is Pessoa){
//       if(other.nome ==  nome){
//         if(other.email == email){
//           return true;
//         }else{
//           return false;
//         }
//       }else{
//         return false;
//       }
//     }else{
//       return false;
//     }
//   }


// 2 jeito de fazer
// @override
// bool operator == (Object other){
//   if(identical(this, other)) return true;

//   var isEquals = false;

//   if(other is Pessoa){
//     if(other.nome == nome){
//       if(other.email == email){
//         isEquals = true;
//       }
//     }
//   }
//   return isEquals;
// }

//3 jeito de fazer
// @override
// bool operator ==(Object other){
//   if(identical(this, other)) return true;

//   return other is Pessoa 
//   && other.nome == nome 
//   && other.email == email;
// }

//   @override
//   int get hashCode {
//     return nome.hashCode ^ email.hashCode;
//   }

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';
}
