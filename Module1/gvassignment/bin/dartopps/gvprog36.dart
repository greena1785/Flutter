class PrintIntChar{
  void form(int num, String ch){
    print('Integer: $num , String: $ch');
  }
  void form1( String ch , int num){
    print('String: Integer: $num');
  }
}
void main(){
var pnc = PrintIntChar();
  pnc.form(20, 'Greena');
  pnc.form(16, 'Vishal');
  pnc.form1('Palak', 12);
  pnc.form1('Gopal', 02);
}