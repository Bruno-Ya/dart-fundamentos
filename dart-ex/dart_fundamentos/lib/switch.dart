void main(){
  /*final diaDaSemana = 3;
  var diaDaSemanaStr = '';
*/
  /*if(diaDaSemana == 0){
    diaDaSemanaStr = 'Domingo';
  }else if(diaDaSemana == 1){
    diaDaSemanaStr = 'Segunda-Feira';
  }else{
    diaDaSemanaStr = 'Não identificado';
  }
*/

  /*switch(diaDaSemana){
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Segunda-Feira';
      break;
    default:
      diaDaSemanaStr = 'Não identificado';
      break;
  }

  print(diaDaSemanaStr);
*/

final idade = 18;
if(idade == 18){
  print('Maior de idade');
}else if(idade == 19){
  print('Maior de idade');
}else{
  print('Menor de idade');
}

switch(idade){
  case 18:
  case 19:
    print('Maior de idade');
    break;
  default:
    print('Menor de idade');
    break;
}
}