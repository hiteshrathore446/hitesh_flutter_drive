//6. Write a program to find the simple Interest.
import 'dart:io';
import 'dart:math' as math;

void main(){
  int x;
  int y;
  int z;
  var ans;
  print("Enter The Priciple Amount : ");
  x=int.parse(stdin.readLineSync()!);
  print("Enter The Interest Rate  : ");
  y=int.parse(stdin.readLineSync()!);
  print("Enter The Month : ");
  z = int.parse(stdin.readLineSync()!);
  ans= x*math.pow(1+y/100, z);
  print("Your Interest : $ans");
}