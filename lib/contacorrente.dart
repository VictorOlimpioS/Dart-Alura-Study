import 'cliente.dart';

class ContaCorrente{

  ContaCorrente(int novaAgencia, this.conta){
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalContaCorrentes ++;
  }

  static   int totalContaCorrentes = 0;

  Cliente titular;
  int _agencia = 145;
  int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  get agencia => _agencia;
  set agencia(int novaAgencia) {if(novaAgencia >0) _agencia = novaAgencia;}

  get saldo {
    return _saldo;
  }

  set saldo(double novoSlado){
    if (novoSlado >= chequeEspecial){
      _saldo = novoSlado;
    } else{
      print('Erro! valor de saldo menor que o Cheque Especial.');
    }
   
 }

  bool verificaSaldo(double valor){
    if(this.saldo - valor < this.chequeEspecial){
      return false;
    }else{
      return true;
     }
  }

  bool saque(double valorSAque){
    if(verificaSaldo(valorSAque)){
      print('Saldo insuficiente');
      return false;
    } else {
      print('Sacando $valorSAque reais');
      this.saldo -= valorSAque;
      return true;
    }
  }

  double deposito(double valorDeposito){
    this.saldo += valorDeposito;
    return this.saldo;
  }

  bool transferencia(double valorTransfer, ContaCorrente contaDestino){
    if(!verificaSaldo(valorTransfer)){
      this.saldo -= valorTransfer;
      contaDestino.deposito(valorTransfer);
      return true;
    }else{
      print('Sem saldo suficiente');
      return false;
      
    } 
  } 

}