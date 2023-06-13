import 'dart:io';

void main(){
  int num=5;
  print("Please enter the number");
  num = int.parse(stdin.readLineSync()!);
  if (num>0){
    print("$num this number is a positive : ");
  }else if (num<=0){
    print("$num this number is a positive : ");
  }
}