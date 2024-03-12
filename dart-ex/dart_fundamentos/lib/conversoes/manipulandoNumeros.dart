void main(){
  final idade = 25;
  
  
  print('Sua idade é $idade');

  final valor = -10;

  if(valor.isNegative){
    print(valor);
  }

  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorErradoString = 'Rodrigo';
  final valorCertoString = '30';

  final valorInt = int.parse(valorCertoString);
  final valorInt2 = int.tryParse(valorErradoString);
  print(valorInt);

  if(valorInt2 != null){
    print('O valor é ${valorInt2 + 2}');
  }

  final precoCamiseta = 30.97554;
  print(precoCamiseta.toStringAsFixed(2));
  
  
}