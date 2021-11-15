import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;

  NavigationItem(this.iconData);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Car {
  String brand;
  String model;
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.price, this.condition, this.images);
}

List<Car> getCarList() {
  return <Car>[
    Car(
      "Toyota",
      "Yaris 1.2 AT ",
      2580,
      "Weekly",
      [
        "asset/image/yaris_0.png",
        "asset/image/yaris_1.jfif",
        "asset/image/yaris_2.png",
      ],
    ),
    Car(
      "Mitsubishi",
      "Pajero",
      3580,
      "Monthly",
      [
        "asset/image/pajero_0.jpg",
      ],
    ),
    Car(
      "Nissan",
      "ALMERA",
      1100,
      "Daily",
      [
        "asset/image/nissan_gtr_0.jpg",
        "asset/image/nissan_gtr_1.jpg",
        "asset/image/nissan_gtr_2.jpg",
        "asset/image/nissan_gtr_3.jpg",
      ],
    ),
    Car(
      "Aodi",
      "A1 Sportback",
      2200,
      "Monthly",
      [
        "asset/image/aodi_0.jpg",
        "asset/image/aodi_1.png",
        "asset/image/aodi_2.png",
      ],
    ),
    Car(
      "Hyundai",
      "Hyundai H-1",
      3400,
      "Weekly",
      [
        "asset/image/hyundai_0.jpg",
        "asset/image/hyundai_1.jfif",
        "asset/image/hyundai_2.jpg",
      ],
    ),
    Car(
      "MG",
      "MG3",
      4200,
      "Weekly",
      [
        "asset/image/MG_0.png",
        "asset/image/MG_1.png",
        "asset/image/MG_2.png",
        "asset/image/MG_3.png",
        "asset/image/MG_4.png",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      2300,
      "Weekly",
      [
        "asset/image/ford_0.png",
        "asset/image/ford_1.png",
      ],
    ),
    Car(
      "Chevrolef",
      "Captiva",
      1450,
      "Weekly",
      [
        "asset/image/chevrolef_0.jpg",
        "asset/image/chevrolef_1.jpg",
      ],
    ),
    Car(
      "Honda",
      "Civic",
      900,
      "Daily",
      [
        "asset/image/honda_0.png",
      ],
    ),
    Car(
      "Mazda",
      "Mazda 3",
      1200,
      "Monthly",
      [
        "asset/image/mazda_0.jpg",
        "asset/image/mazda_1.png",
        "asset/image/mazda_2.jpg",
      ],
    ),
  ];
}

class Dealer {
  String name;
  int offers;
  String image;

  Dealer(this.name, this.offers, this.image);
}

List<Dealer> getDealerList() {
  return <Dealer>[
    Dealer(
      "Thai",
      174,
      "asset/image/thai.png",
    ),
    Dealer(
      "Chic",
      126,
      "asset/image/chic.png",
    ),
    Dealer(
      "Sawasdee",
      89,
      "asset/image/sawasdee.png",
    ),
  ];
}

class Filter {
  String name;

  Filter(this.name);
}

List<Filter> getFilterList() {
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}
