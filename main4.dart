//4. Write a program to find the Area of Circle
import 'dart:io';

void main(){
var x;
var y; 
var ans; 
print("enter the value :");
x= int.parse(stdin.readLineSync()!);
print("enter the value :");
y= int.parse(stdin.readLineSync()!);
print("enter the value :");
ans = (3.14*x*y);
print("Area of Circle : $ans");
}
