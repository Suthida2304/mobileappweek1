import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KMUTNB'),
      ),
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 80,
              child: Text(
                "5555",
                style: TextStyle(
                  fontSize: 48,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
