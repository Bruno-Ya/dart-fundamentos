
import 'package:dart_poo/interfaces/essencia.dart';

class Onix implements Essencia{
  
  @override
  String marca = 'Onix';

  @override
  String sabor = 'Mango';

  @override
  String descricao = ' A Onix traz sua mais nova Essência, Onix Mango. Possui um sabor intenso de manga, se você ainda não experimentou, corra para experimentar! As Essências Onix trazem a proposta de essências de sabor intenso e de ótima qualidade para o mercado, sendo assim um ótimo custo/benefício para você que gosta de apreciar um rosh de excelente qualidade e duração.';

  @override
  int peso = 50;

  @override
  int preco(){
    return 15;
  }
}