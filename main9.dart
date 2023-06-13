//9. Write a Program to show swap of two No's without using third variable.
import 'dart:io';

void main(){
  var num,num1;
  
  stdout.write("enter first number :");
  num=int.parse(stdin.readLineSync()!);
  
  stdout.write("enter the second number :");
  num1=int.parse(stdin.readLineSync()!);


  num= num1;
  num1=num;
  stdout.write("first number is swap $num second number $num1");
  }