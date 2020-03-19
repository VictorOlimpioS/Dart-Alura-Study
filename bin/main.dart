

import '../lib/cliente.dart';
import '../lib/contacorrente.dart';


void main(){
  
  Cliente debo = Cliente();

  ContaCorrente contaVictor = ContaCorrente(123,12345679);
  ContaCorrente contaDebo = ContaCorrente(-123,12345678);


 print(ContaCorrente.totalContaCorrentes);



}





