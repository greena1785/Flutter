class PrintNumber{
  void printn(int a){
    print('Integer Datatype : $a');
  }
  void printn1(double b){
    print('Double Datatype : $b');
  }
}
void main(){
  var p1 =PrintNumber();
  p1.printn(20);
  p1.printn1(16.02);
}