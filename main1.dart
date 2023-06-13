//1.Display This Information using print your name,your birthdate,your age,your address
void main(){
  var name = "Hitesh";
  int age = 24;
  var datetime= DateTime.parse("1999-01-24");
  var add= "Vrindawan Godrej Gardan,Ahmedabad";
  var birthdate = "${datetime.day}-${datetime.month}-${datetime.year}";
  print("enter your name : $name");
  print("enter your age : $age");
  print("enter the your birth date : $birthdate");
  print("enter your address : $add");
}