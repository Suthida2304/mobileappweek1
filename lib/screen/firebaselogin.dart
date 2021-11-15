import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/Carrental/showroom.dart';
import 'package:mobileappweek1/screen/dashboard.dart';

class FirebaseLogin extends StatefulWidget {
  const FirebaseLogin({Key? key}) : super(key: key);

  @override
  _FirebaseLoginState createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> {
  var email, password;
  final formKey = GlobalKey<FormState>();

  Future<void> checkUser() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print("Success");
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Showroom());
        Navigator.of(context).pushAndRemoveUntil(
            materialPageRoute, (Route<dynamic> route) => false);
      }).catchError((onError) {
        print(onError);
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/image/bglogin.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: formKey,
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    'LOGIN ',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'Premium Car Rental',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    width: size.width * 0.9,
                    child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.alternate_email,
                            color: Colors.brown[900],
                            size: size.height * 0.05,
                          ),
                          hintText: "Email",
                        ),
                        onSaved: (value) {
                          email = value!.trim();
                        }),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    width: size.width * 0.9,
                    child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.brown[900],
                            size: size.height * 0.05,
                          ),
                          hintText: "Password",
                        ),
                        onSaved: (value) {
                          password = value!.trim();
                        }),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.08,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          color: Colors.brown,
                        ),
                      ),
                      //NOTE กดปุ่ม Login
                      onPressed: () {
                        formKey.currentState!.save();
                        checkUser();
                      },
                      color: Colors.brown,
                      textColor: Colors.white,
                      child: Text("login".toUpperCase(),
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'All rights reserved',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
