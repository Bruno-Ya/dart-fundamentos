void main(){


  //const cor = 'Vermelho';
  var cor = 'Cores.vermelho';

  if(cor == Cores.vermelho){

  }
// Transformando a string azul em um enum Cores.azul
//antes da versão 2.15
var azul = 'azul';
var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
print(corAzul);

//2.15
print(Cores.azul.name);
var corAzul215 = Cores.values.byName(azul);
print(corAzul215);


var coresMap = Cores.values.asMap();
print(coresMap);

var coresNameMap = Cores.values.asNameMap();
print(coresNameMap);

var coresPeloMap = coresNameMap [azul];
print(coresPeloMap);

// Cores.values.byName('branco');
  var corBranco = coresNameMap['branco'];
  print(corBranco); 
}

enum Cores{
  azul, vermelho, laranja, preto,
}