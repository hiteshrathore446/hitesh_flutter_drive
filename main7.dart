//7 Write a program to convert temperature from degree centigrade to Fahrenheit.
import 'dart:io';

void main(){
  var x;
  var ans ;
  print("Degree Celsius : ");
 x= int.parse(stdin.readLineSync()!); 
 ans = (x * 9/5) + 32 ;
 print("temperature $ans");
}
