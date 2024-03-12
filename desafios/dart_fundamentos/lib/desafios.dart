// ignore_for_file: unrelated_type_equality_checks, unused_local_variable

void main(){
  
//1
//paciente com mais de 20
//Rodrigo Rahman
//Joaquim Rahman

//2 
//Desenvolvedor:
//Rodrigo Rahman
//Gustavo Rahman


//3 - Moram em SP:
//Rodrigo Rahman
//Joaquim Rahman

  //Detalho sobre String
  //A String é composta por 4 campos  (Nome | Idade | Profissão | Estado onde mora)

  final patients = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //baseado no array acima monte um relatório onde:
  //1 - Apresente os pacientes com mais de 20 anos e print o nome deles
    print('Apresente os pacientes com mais de 20 anos e print o nome deles');
      for(final patient in patients){
      final patientsData = patient.split('|');
      final age = int.tryParse(patientsData[1]) ?? 0;
    
        if(age > 25){
        print(patientsData[0]);
      }
    }
    print(' ');
      final developers = [];
      final students = [];
      final dentists = [];
      final journalists = [];


    for(var patient in patients){
      final patientsData = patient.split('|');
      final name = patientsData[0];
      final profession = patientsData[2].toLowerCase();

        if(profession == 'desenvolvedor'){
          developers.add(name);
        }

        if(profession == 'estudante'){
          students.add(name);
        }

        if(profession == 'dentista'){
          dentists.add(name);
        }

        if(profession == 'jornalista'){
          journalists.add(name);
        }
      }

      print('2- Apresente quantos pacientes existem para cada profissão (Desenvolvedor, Dentista, Estudante, Jornalista)');
      print('Desenvolvedores:');
        developers.forEach(print);

      print('Estudantes:');
        students.forEach(print);

      print('Dentistas:');
        dentists.forEach(print);

      print('Jornalistas:');
        journalists.forEach(print);

      print(' ');
      print('3- Apresente a quantidade de pacientes que moram em SP');
        for(var patient in patients){
          final patientsData = patient.split('|');
          final state = patientsData[3].toLowerCase();

            if(state == 'sp'){
              print(patientsData[0]);
            }
        }
  
  }
  
  
