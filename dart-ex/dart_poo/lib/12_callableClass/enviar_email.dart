class EnviarEmail{

  bool call (String email){
    print('chamando o método call');
    return enviar(email);
  }

  bool enviar(String email){
    print('chamando o método enviar');
    return true;
  } 
}