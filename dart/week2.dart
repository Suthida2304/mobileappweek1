void main() {
  //print (callGen(1999));

 /* var x = callColor("black");
  print(x);
  */
//เรียกใช้ฟังก์ชั่น
  callWeb("Google",protocal : "https", port : 443);
}
//เรียกฟังก์ชั่น แบบ short-hand
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";
/******Test1*********/

int callColor([String newColor = "pink"]) { //ฟังก์ชั่น
  List<dynamic> color = ["red", "blue", "green"]; //ฟังก์ชั่น List

  color.add(newColor);

  for (var item in color) { //เรียกใช้ for in
    print(item);
  }
  return color.length; //การรีเทิร์นค่าจพนวนในList
} /******Test2*********/


//การเรียกใช้ฟังก์ชั่น Arrow , การเชื่อมต่อweb , ต่อ port การเรียกใช้  name , parameter
void callWeb(String web, {int port = 80, String protocal ="http"}) => 
print("$protocal $web : $port");
/******Test3*********/

