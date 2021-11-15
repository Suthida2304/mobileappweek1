import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Adddata extends StatefulWidget {
  const Adddata({Key? key}) : super(key: key);
  //final Car car;
  //Adddata({required this.car});

  @override
  _AdddataState createState() => _AdddataState();
}

class _AdddataState extends State<Adddata> {
  //ประกาศตัวแปรสำหรับเพิ่มสินค้า
  String? name, surename, address, tel, date, status, carmodel;
  final formKey = GlobalKey<FormState>();

  //กำหนดค่าเริ่มต้นสำหรับการส่งข้อมูลไปที่ Realtime Firebase
  final dbfirebase = FirebaseDatabase.instance.reference().child('Store');

  Future<void> createData() async {
    await dbfirebase.push().set({
      'carmodel': carmodel,
      'name': name,
      'surename': surename,
      'address': address,
      'tel': tel,
      'date': date,
      'status': status,
    }).then((value) {
      print("Success");
    }).catchError((onError) {
      print(onError.code);
      print(onError.message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/image/bgadd.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  txtCarmodel(),
                  txtName(),
                  txtSureName(),
                  txtAddress(),
                  txtTel(),
                  txtDate(),
                  txtStatus(),
                  btnSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget txtCarmodel() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Carmodel : ',
          icon: Icon(
            Icons.car_repair_sharp,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Carmodel',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 2) {
            return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
          }
        },
        onSaved: (value) {
          carmodel = value;
        },
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Name : ',
          icon: Icon(
            Icons.supervised_user_circle_rounded,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 2) {
            return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSureName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Surename : ',
          icon: Icon(
            Icons.supervised_user_circle_rounded,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Surename',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 2) {
            return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
          }
        },
        onSaved: (value) {
          surename = value;
        },
      ),
    );
  }

  Widget txtAddress() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Address : ',
          icon: Icon(
            Icons.local_activity_rounded,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Address',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 2) {
            return 'กรุณาใส่ข้อมูลมากกว่า 2 ตัวอักษร';
          }
        },
        onSaved: (value) {
          address = value;
        },
      ),
    );
  }

  Widget txtTel() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Tel : ',
          icon: Icon(
            Icons.ten_mp_rounded,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Tel',
        ),
        validator: (value) {},
        onSaved: (value) {
          tel = value;
        },
      ),
    );
  }

  Widget txtDate() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Date : ',
          icon: Icon(
            Icons.date_range_rounded,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your Date',
        ),
        validator: (value) {},
        onSaved: (value) {
          date = value;
        },
      ),
    );
  }

  Widget txtStatus() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Status :',
          icon: Icon(
            Icons.stay_current_portrait_sharp,
            color: Colors.grey[800],
            size: 35,
          ),
          hintText: 'Input your product status',
        ),
        onSaved: (value) {
          status = value;
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print(name);
            print(surename);
            print(tel);
            print(date);
            print(status);
            createData();
            formKey.currentState!.reset();
          }
        },
        child: Text('Save'),
      );
}
