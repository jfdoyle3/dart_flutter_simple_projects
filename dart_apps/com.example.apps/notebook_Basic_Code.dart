



class Person{
  String name='Jim';
  int age=40;
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
  var personOne=Person();
  var personTwo=Person();
  personTwo.name="Joe";
  print(personTwo.name);
  print(personOne.name);
}

void numberPlay(){
  double numberOne;
  numberOne=addNumbers(1,20.5);
  var numberTwo=addNumbers(2.3, 44.6);
  print(numberOne);
  print(numberTwo);
  print('=${numberOne+numberTwo}');
}