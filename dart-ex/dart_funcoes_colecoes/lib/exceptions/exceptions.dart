void main (){

  String idade = '25';
  String? nome;
  // int.parse(idade);

  try{
    print('Inicio');
    // var idadeParse = int.parse(idade);
    // //nome!.toLowerCase();

    // if(idadeParse == 25){
    //   throw Exception();
    // }
    print('Fim');

  
    
  }on FormatException catch(e, s){
    // print(e);
    print(s);
    // print('Erro ao converter idade');
  }on TypeError{
    print('Erro ao converter idade');
  }on Exception {
    print('Erro idade == 25');
  }catch(e){
    print('Erro ao executar programa');
  } finally{
    print('finally');
  }

}