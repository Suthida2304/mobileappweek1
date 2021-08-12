class Country { //สร้างclass
  var country = "China";
  var city;
  var _animal = "Cat";
  static var color = "Red";

  //เรียกใช้ Constructor แบบสั้น
   Country(this.city, this._animal);

  //เรียกใช้ Redirect Constructor 
   Country.jeen(String city , String animal) : this(city, animal);

  //เรียกใช้ Method
  void callHello(){
    print(" nǐ-hǎo ");
  }

  String callAnimal(){
   return this._animal;
  }

}