import 'dart:io';

void main(){
  stdout.writeln("Input your name: ");
  String input=stdin.readLineSync()!;
  print("Hi $input \nWelcome to dart!!!");
}