import 'city.dart';
void main(){
  print("Hello World");
/*
  //เรียกใช้property
  Country item = new Country.jeen("Paking", "Panda"); 

  print ("Welcome To " + item.country);
  item.callHello();
  print("เมืองหลวง : " + item.city);
  //เรียกใช้ Private
  print("สัตว์ประจำชาติ : " + item.callAnimal());

  print("สีประจำชาติ : " + Country.color);
  */
  var order = City();
  print("Welcome To " + order.country);
  order.callSuper(); //การเรียกใช้propertyสืบทอดจากคลาสแม่
  print("สัตว์ประจำชาติ : " +order.callAnimal());
  order.callProblem();
}
