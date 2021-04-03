

class Person{
  String? name;
  int? age;

  Person(this.name, this.age);
  // Set a default value in constructor:
  Person.option({required this.name, this.age=0});

}

double addNumbers(double num1, double num2){
  return num1+num2;
}

void main(){
  // numberPlay();
  personObject();
  print('end of line...');
}

void personObject(){
  var personOne=Person('Jim',34);
  var personTwo=Person.option(name: 'joe'); // order of constructor variables is not necessary.
  print('2: ${personTwo.name}  age: ${personTwo.age}');
  print('1: ${personOne.name}  age: ${personOne.age}');
}

void numberPlay(){
  double numberOne;
  numberOne=addNumbers(1,20.5);
  var numberTwo=addNumbers(2.3, 44.6);
  print(numberOne);
  print(numberTwo);
  print('=${numberOne+numberTwo}');
}