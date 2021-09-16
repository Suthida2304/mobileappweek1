import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurName(),
                txtEmail(),
                txtPass(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Name : ',
          icon: Icon(Icons.account_circle),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนข้อมูล';
          } else if (value.length < 2) {
            return 'ต้องมีตัวอักษรมากกว่า 2 ตัว';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSurName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Surname : ',
          icon: Icon(Icons.add_reaction_sharp),
          hintText: 'Input your surname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนข้อมูล';
          } else if (value.length < 2) {
            return 'ต้องมีตัวอักษรมากกว่า 2 ตัว';
          }
        },
        onSaved: (value) {
          surname = value;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Email : ',
          icon: Icon(Icons.email_sharp),
          hintText: 'Input your email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณาป้อน @ ตามรูปแบบ Email';
          } else if (!(value.contains('.'))) {
            return 'กรุณาป้อน . ตามรูปแบบ Email';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPass() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Password : ',
          icon: Icon(Icons.password_rounded),
          hintText: 'Input your password',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนข้อมูล';
          } else if (value.length < 8) {
            return 'กรุณาป้อนข้อมูลมากกว่า 8 ตัว';
          }
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: pColor,
        ),
        onPressed: () {
          print("OK");
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print(
                "Name : $name Surname : $surname Email : $email Password : $password");
            formKey.currentState!.reset();
          }
        },
        child: Text('Submit'),
      );
}
