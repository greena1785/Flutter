abstract class Bank{
  double balance=0.0;
  void getBalance();
}
class BankA extends Bank{
  @override

  void getBalance() {
    print('BankA');
    print('Your Balance After Deposit ${balance = (balance + 100)}');
  }
}
class BankB extends Bank {
  @override
  void getBalance() {
    print('BankB');
    print('Your Balance After Deposit  ${balance = (balance + 150)}');

  }
}
class BankC extends Bank {
  @override
  void getBalance() {
    print('BankC');
    print('Your Balance After Deposit ${balance = (balance + 200)}');

  }
}
void main(){
  var ba1 = BankA();
  var bb1 = BankB();
  var bc1 = BankC();
  ba1.getBalance();
  bb1.getBalance();
  bc1.getBalance();
}