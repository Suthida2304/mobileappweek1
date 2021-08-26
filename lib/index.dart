import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var x = 300;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: -20,
              child: Image.asset(
                "asset/image/oo.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "asset/image/logokmutnb.png",
                  width: size.width * 0.35,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome To KMUTNB",
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1598372450684-282b7d0091d2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
                  width: 250,
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SINGIN",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    print("Hello Word");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SINGUP",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    print("Hello Word");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
