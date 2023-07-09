import 'dart:io';
import 'dart:async';

//11. Write a Program to check the given year is leap year or not.
bool isyear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

void main() {
  var year;
  print("Please enter the leap year");
  year = int.parse(stdin.readLineSync()!);
  if (isyear(year)) {
    print("is leap year");
  }
  print("is not leap year");
}

//12.Write a Program to check the given number is prime or not prime.
void main() {
  int i, x = 0, xy = 0;
  int num = 5;
  x = num ~/ 2;
  for (i = 2; i <= x; i++) {
    if (num % i == 0) {
      print('$num is not a prime number');
      xy = 1;
      break;
    }
  }
  if (xy == 0) {
    print('$num is prime number');
  }
}

//13. Write a program to find the Max number from the given three number using Nested If
void main() {
  int x, y, z, max;
  x = 10;
  y = 25;
  z = 50;
  if (x > y) {
    if (x > z)
      max = x;
    else
      max = z;
  } else {
    if (y > z)
      max = y;
    else
      max = z;
  }
  print("Maximum Number $max");
}

//14 Write a program to find the Max number from the given three number using Ternary Operator
void main() {
  int x = 77, y = 58, z = 578, max;
  max = (x > y) ? (x > z ? x : z) : (y > z ? y : z);
  print("number of maximum $max");
}

//15. Write a program to find the Max number from the given three number using Nested If
void main() {
  int x, y, z, max;
  x = 10;
  y = 25;
  z = 50;
  if (x > y) {
    if (x > z)
      max = x;
    else
      max = z;
  } else {
    if (y > z)
      max = y;
    else
      max = z;
  }
  print("Maximum Number $max");
}

//16. Write a program user enter the 5 subjects mark. You have to make a total and find the percentage. percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have toprint “First class” percentage >50 and percentage <= 60 you have to rint “Second class” percentage > 35 and percentage <= 50 you have to print “Pass class” Otherwise print “Fail
void main() {
  int marks;
  print("subject of marks");
  marks = int.parse(stdin.readLineSync()!);
  if (marks >= 75) {
    print("Distinction");
  }
  if (marks >= 60) {
    print("First Class");
  }
  if (marks >= 50) {
    print("Second Class");
  }
  if (marks >= 40) {
    print("Third Class");
  }
  if (marks >= 35) {
    print("Pass");
  } else {
    print("Fail");
  }
}

//17 Write Program use switch statement. Display Monday to Sunday
void main() {
  var day;
  print("1st to 7th days");
  day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
  }
}

// 18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Drive
void main() {
  var x;
  var y;
  var ans;
  print("select case number");
  ans = int.parse(stdin.readLineSync()!);
  switch (ans) {
    case 1:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x + y);
      print("enter the number Addtion $ans");
      break;
    case 1:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x + y);
      print("this number is Addtion $ans");
      break;
    case 2:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x - y);
      print("this number is Subtraction $ans");
      break;
    case 3:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x * y);
      print("this number is Multiplication $ans");
      break;
    case 4:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x / y);
      print("this number is Division $ans");
      break;
    default:
      print("Invalid Ans please try again");
  }
}

//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven)
void main() {
  var x;
  var y;
  var ans;
  print("select case number");
  ans = int.parse(stdin.readLineSync()!);
  switch (ans) {
    case 1:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x * y) / 2;
      print("the area of Triangle : $ans");
      break;
    case 2:
      print("enter the amount");
      x = int.parse(stdin.readLineSync()!);
      print("enter the amount");
      y = int.parse(stdin.readLineSync()!);
      ans = (x * y) / 2;
      print("the area of Rectangle : $ans");
      break;

    default:
      print("Invalid Ans please try again");
  }
}

//20. Looping Programs
//  1. Write a program to print the 1 to 10 using For loop.
void main() {
  for (var i = 1; i < 11; i++) {
    print("$i");
  }
}

// 2. Write a Program to print the 51 to 60 using while loop
void main() {
  int i = 51;
  while (i < 61) {
    print(i);
    ++i;
  }
}

//3 Write a program to print the 100 to 81 using do while loop
void main() {
  int i = 100;
  while (i > 81) {
    print(i);
    --i;
  }
}

//4 Write a program you have to find the factorial of given number
void main() {
  var x;
  print("enter the number");
  x = int.parse(stdin.readLineSync()!);
  var num = 1;
  for (var i = 5; i > 1; i--) {
    num *= i;
  }
  print(num);
}

//  5. Write a program you have to print the Fibonacci series up to user given number
void main() {
  int num1 = 0, num2 = 1, num3;
  print(num1);
  print(num2);
  for (int i = 0; i <= 5; i++) {
    num3 = (num1 + num2);
    print("$num3");
    num1 = num2;
    num2 = num3;
  }
}

//6.Write a program you have to print the table of given number
// no ans sorry
//7.Write a program to find out the max from given number (E.g. No: -1562 Max number is
void main() {
  var x = [121, 25, 56, 85, 3, 5];
  var lgestval = x[0];
  var smallval = x[0];
  for (var i = 0; i < x.length; i++) {
    if (x[i] > lgestval) {
      lgestval = x[i];
    }
    if (x[i] < smallval) {
      smallval = x[i];
    }
  }
  print("small Val $smallval");
  print("Large val $lgestval");
}

//8. Write a program make a summation of given number
void main() {
  var x, y, z;
  print("val x");
  x = int.parse(stdin.readLineSync()!);
  print("val y");
  y = int.parse(stdin.readLineSync()!);
  z = (x + y);
  print("x+y $z");
}

//**********Create Below Patterns*******************************
//1.Patterns
void main() {
  for (var i = 0; i < 6; i++) {
    var x = ('*');
    var xy = x * i;
    print(xy);
  }
}

//2. Patterns
void main() {
  int i, j, numbers, n = 5;
  for (i = 0; i < n; i++) {
    numbers = 1;
    for (j = 0; j <= i; j++) {
      stdout.write('$numbers ');
      numbers++;
    }
    stdout.writeln();
  }
}

//3. Patterns
void main() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = 2 * (rows - i); j >= 0; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

// 4. Patterns
void main() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = 2 * (rows - i); j >= 0; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
//5.Patterns {
  for (var i = 1; i < 6; i++) {
    var x = i;
    var xy = x.toString() * i;
    print(xy);
  }
}

//6. Patterns
void main() {
  var sp = 5;
  var oldstr = "";
  for (var i = 1; i < 6; i++) {
    var x = " " * (sp - i);
    //print(sp.toString() + "-" + i.toString());
    var xy = "";
    if (oldstr == "") {
      xy = x.toString() + i.toString();
      oldstr = i.toString();
    } else {
      xy = x.toString() + i.toString() + oldstr.toString();
      oldstr = i.toString() + oldstr;
    }
    print(xy);
    //sp = sp - i;
  }
}

//7. Patterns
void main() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

//8. Patterns
void main() {
  int rows = 5;
  int number;
  for (int i = 0; i < rows; i++) {
    number = 1;
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("$number ");
      number++;
    }
    stdout.writeln();
  }
}

//9. Patterns
void main() {
  int rows = 5;
  int number;
  for (int i = 0; i < rows; i++) {
    number = 1;
    var xy = number.toString();
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("$xy ");
      number++;
    }
    stdout.writeln();
  }
}

//**********Create Below Patterns End *******************************
//21. What is inheritance?
// nheritance is defined as a mechanism where the sub or child class inherits the properties and
// characteristics of the super class or other derived classes. It also supports additional features
// of extracting properties from the child class and using it into other derived classes."
// *************************************************
// 22. Which inheritance is not supported by Dart? Why? B3. What is advantage of inheritance?
//      No, Dart does not support multiple implementation inheritance.
// *************************************************
// 23. Difference between inheritance and encapsulation. B5. Difference between inheritance and abstraction.
//              			Abstraction								Encapsulation
// Abstraction is the process or method of gaining the information.	While encapsulation is the process or method to contain the information.
// In abstraction, problems are solved at the design or interface level.	While in encapsulation, problems are solved at the implementation level.
// *************************************************
// 24. Difference between inheritance and polymorphism
//         inheritance                                                polymorphism
// It is basically applied to classes.	Whereas it is basically applied to functions or methods.
// It is used in pattern designing.	While it is also used in pattern designing.
// *************************************************
//25. Can we override static method in Dart?
class students {
  var std_name;
  var std_lastName;
  var std_class;
  var roll_no;
  void Stdinput() {
    print("enter the student name :");
    std_name = stdin.readLineSync();
    print("enter the last name");
    std_lastName = stdin.readLineSync();
    print("enter the student class");
    std_class = int.parse(stdin.readLineSync()!);
    print("enter the student roll no ");
    roll_no = int.parse(stdin.readLineSync()!);
  }

  void display() {
    print("this is student name $std_name");
    print("student last name $std_lastName");
    print("student class name $std_class");
    print("student roll no $roll_no");
  }
}

class display extends students {
  var std_name;
  var std_lastName;
  var std_class;
  var roll_no;
  void Stdinput1() {
    print("enter the student name :");
    std_name = stdin.readLineSync();
    print("enter the last name");
    std_lastName = stdin.readLineSync();
    print("enter the student class");
    std_class = int.parse(stdin.readLineSync()!);
    print("enter the student roll no ");
    roll_no = int.parse(stdin.readLineSync()!);
  }

  void display1() {
    print("this is student name $std_name");
    print("student last name $std_lastName");
    print("student class name $std_class");
    print("student roll no $roll_no");
  }
}

void main() {
  var obj = display();
  obj.Stdinput();
  obj.display();
  obj.Stdinput1();
  obj.display1();
}

//26 Can we overload static method in Dart
class human {
  void run() {
    print("human is runing");
  }
}

class man extends human {
  void run() {
    print("boy is running ");
  }
}

void main() {
  man m = new man();
  m.run();
}

//27. Can a class implement more than one interface? B10. Can a class extend more than one class in Dart
class Employee {
  var emp_name;
  var emp_lastname;
  var emp_add;
  var emp_no;
  void input() {
    print("enter the employee");
    emp_name = stdin.readLineSync();
    print("enter the employee last name");
    emp_lastname = stdin.readLineSync();
    print("enter the employee address");
    emp_add = stdin.readLineSync();
    print("enter the employee phone number");
    emp_no = int.parse(stdin.readLineSync()!);
  }

  void display() {
    print(
        "your empployee name : $emp_name employee last name :$emp_lastname employee address : $emp_add employee phone no :$emp_no");
  }
}

void main() {
  var obj = Employee();
  obj.input();
  obj.display();
}

//28. Can an interface extend more than one interface in Dart?
class person {
  var person_name;
  person() {
    print("enter the person name ");
    person_name = stdin.readLineSync();
    print("this is person name $person_name");
  }
}

void main() {
  var obj = person();
}

// 29. What will happen if a class implements two interfaces and they both have a method with same name and signature?
//     does not supported interfaces
//30. Can we pass an object of a subclass to a method expecting an object of the super class? B14. Are static members inherited to sub classes
class subclass {
  var stdname;
  var stdiclass;
  var stdrollno;
  void subonput() {
    print("Name of Student :");
    stdname = stdin.readLineSync();
    print("please enter the your class");
    stdiclass = int.parse(stdin.readLineSync()!);
    print("plase enter the roll No :");
    stdrollno = int.parse(stdin.readLineSync()!);
  }

  void display() {
    print(
        "your student name :$stdname your roll no :$stdiclass your roll no $stdrollno");
  }

  void main() {
    var obj = subclass(); // creating object
    obj.subonput();
    obj.display();
  }
}

// // 31. What happens if the parent and the child class have a field with same identifier? B16. Are constructors and initializers also inherited to sub classes?
//  no ans sorry
// 32. How do you restrict a member of a class from inheriting by its sub classes?
//  No Answer sorry
//33. How do you implement multiple inheritance in Dart
class person {
  var name;
  var age;
  void input() {
    print("enter the name ");
    name = stdin.readLineSync()!;
    print("enter the age ");
    age = int.parse(stdin.readLineSync()!);
  }

  void Display() {
    print("this is name$name");
    print("this yis age $age");
  }
}

class Display extends person {
  var name;
  var age;
  void input1() {
    print("enter the name ");
    name = stdin.readLineSync()!;
    print("enter the age");
    age = int.parse(stdin.readLineSync()!);
  }

  void Display1() {
    print("this is name : $name");
    print("this your age $age");
  }
}

void main() {
  var obj = Display();
  obj.input();
  obj.Display();
  obj.input1();
  obj.Display1();
}

//34. Can a class extend by itself in Dart
//No
//35.How do you override a private method in Dart
class human {
  void run() {
    print("human is runing");
  }
}

class man extends human {
  void run() {
    print("boy is running ");
  }
}

void main() {
  man m = new man();
  m.run();
}

//36. When to overload a method in Dart and when to override it
//override
class employee {
  void run() {
    print("Employee is not work");
  }
}

class employees extends employee {
  void run() {
    print("Employee is worked");
  }
}

void main() {
  employees obj = new employees();
  obj.run();
}

// overload
class person {
  var name;
  var age;
  void input() {
    print("enter the name ");
    name = stdin.readLineSync()!;
    print("enter the age ");
    age = int.parse(stdin.readLineSync()!);
  }

  void Display() {
    print("this is name$name");
    print("this yis age $age");
  }
}

class Display extends person {
  var name;
  var age;
  void input1() {
    print("enter the name ");
    name = stdin.readLineSync()!;
    print("enter the age");
    age = int.parse(stdin.readLineSync()!);
  }

  void Display1() {
    print("this is name : $name");
    print("this your age $age");
  }
}

void main() {
  var obj = Display();
  obj.input();
  obj.Display();
  obj.input1();
  obj.Display1();
}

//37. What the order is of extends and implements keyword on Dart class declaration?
class person {
  var name;
  var age;
  void input() {
    print("enter the name ");
    name = stdin.readLineSync()!;
    print("enter the age ");
    age = int.parse(stdin.readLineSync()!);
  }

  void Display() {
    print("this is name$name");
    print("this yis age $age");
  }
}

class Display extends person {}

void main() {
  var obj = Display();
  obj.input();
  obj.Display();
}

//38. How do you prevent overriding a Dart method without using the final modifier
class employee {
  void run() {
    print("Employee is not work");
  }
}

class employees extends employee {
  void run() {
    print("Employee is worked");
  }
}

void main() {
  employees obj = new employees();
  obj.run();
}

// 39 What are the rules of method overriding in Dart?
// 1. The return type should be the same as in the method present in the superclass.
// 2. The argument list should be the same as in the method present in the superclass.
// 3. We cannot override a method if it is declared static or final.
// 4. If we can't inherit a method, we can't override it.
// *************************************************
// 40. Difference between method overriding and overloading in Dart.
//      overriding                    overloading
// 1.dynamic Binding              1. static binding
// *************************************************
// 41. What happens when a class implements two interfaces and both declare field (variable) with same name?
// this task can't be perfonmed due to method overloading in dart methode over loading ias not supported
// ************************************************

// 42. Can a subclass instance method override a superclass static method?
class employee {
  void run() {
    print("Employee is not work");
  }
}

class employees extends employee {
  void run() {
    print("Employee is worked");
  }
}

void main() {
  employees obj = new employees();
  obj.run();
}

//43. Can a subclass static method hide superclass instance method?
class subclass {
  var stdname;
  var stdiclass;
  var stdrollno;
  void subonput() {
    print("Name of Student :");
    stdname = stdin.readLineSync();
    print("please enter the your class");
    stdiclass = int.parse(stdin.readLineSync()!);
    print("plase enter the roll No :");
    stdrollno = int.parse(stdin.readLineSync()!);
  }

  void display() {
    print(
        "your student name :$stdname your roll no :$stdiclass your roll no $stdrollno");
  }

  void main() {
    var obj = subclass(); // creating object
    obj.subonput();
    obj.display();
  }
}

//44.Can a superclass access subclass member?
class subclass {
  var stdname;
  var stdiclass;
  var stdrollno;
  void subonput() {
    print("Name of Student :");
    stdname = stdin.readLineSync();
    print("please enter the your class");
    stdiclass = int.parse(stdin.readLineSync()!);
    print("plase enter the roll No :");
    stdrollno = int.parse(stdin.readLineSync()!);
  }

  void display() {
    print(
        "your student name :$stdname your roll no :$stdiclass your roll no $stdrollno");
  }

  void main() {
    var obj = subclass(); // creating object
    obj.subonput();
    obj.display();
  }
}

// 45. Difference between object oriented and object based language.
//                        object oriented                                   object based
// The object-oriented language supports all the features of OOPs.   Object-based language doesn't support all the features of OOPs like Polymorphism and Inheritance
// Object-oriented language doesn't has an in-built object.          Object-based language has an in-built object like javascript has a window object.
// Object-oriented languages are C++, C#, Java etc.                  Object-based languages are Javascript, VB, etc.
// 46. Create a program using List
void main() {
  List name = ["Hitesh", "Darshan", "Meet"];
  print(name[0]);
}

// 47.Create a program using Set
void main() {
  print("create a new sets");
  var name = {"hitesh", "ramesh", "prakash", "kusum"};
  print(name);
  var x = name.elementAt(2);
  print(x);
}

//48. Create a program using Map
void main() {
  var exp = new Map();
  exp["User Name"] = ["Hiteshrathore446"];
  exp["password"] = ["Hk#123"];
  print(exp);
}
