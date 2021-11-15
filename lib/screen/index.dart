import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var x = 300;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/image/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Container(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      "Premium ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Car Rental",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    /*Image(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1598372450684-282b7d0091d2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
                      width: 250,
                      height: 250,
                    ),*/
                    SizedBox(
                      height: 350,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "SINGIN",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print("Hello Word");
                        Navigator.pushNamed(context, 'Login');
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                        padding: EdgeInsets.fromLTRB(47, 10, 47, 10),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "SINGUP",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print("Hello Word");
                        Navigator.pushNamed(context, 'Register');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
