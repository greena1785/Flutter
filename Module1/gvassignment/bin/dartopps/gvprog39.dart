class Member{
  String? Name;
  int? Age;
  int? PhoneNumber;
  String? Address;
  double? Salary;

  void printSalary(){
    print('Salary Of $Name Is $Salary');
  }
}
class Employee extends Member{
  String? Specialization;
  String? Department;
}
class Manager extends Member{
  String? Specialization;
  String? Department;
}
void main(){
 var e1 = Employee();
 e1.Name='Greena';
 e1.Address='Gandevi';
 e1.Age=21;
 e1.PhoneNumber=8200438022;
 e1.Specialization='Flutter Developer';
 e1.Department='Android';
 e1.Salary=50000.0;
 e1.printSalary();
 var m1 = Manager();
 m1.Name='Vishal';
 m1.Address='Gandevi';
 m1.Age=25;
 m1.PhoneNumber=9558200623;
 m1.Specialization='Flutter & Kotlin Developer';
 m1.Department='Android';
 m1.Salary=80000.0;
 m1.printSalary();

}