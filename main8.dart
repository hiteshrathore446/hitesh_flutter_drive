//8. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by user.
import 'dart:io';
void main(){
var a,b,c,d,e;
int tot=500;
var sum;
print("enter the first subject of marks : ");
a=int.parse(stdin.readLineSync()!);
print("enter the second subject of marks :");
b= int.parse(stdin.readLineSync()!);
print("enter the thirt subject of marks :");
c=int.parse(stdin.readLineSync()!);
print("enter the fourth subject of marks :");
d= int.parse(stdin.readLineSync()!);
print("enter the five subject of marks :");
e = int.parse(stdin.readLineSync()!);
sum =(a+b+c+d+e)*100/tot;
print("subject if percentage $sum");
}
