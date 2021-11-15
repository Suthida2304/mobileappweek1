import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class Viewdata extends StatefulWidget {
  const Viewdata({Key? key}) : super(key: key);

  @override
  _ViewdataState createState() => _ViewdataState();
}

class _ViewdataState extends State<Viewdata> {
  //ประกาศตัวแปรเพื่ออ้างอิงไปยัง Child ที่ต้องการ
  final dbfirebase = FirebaseDatabase.instance.reference().child('Store');

  // function สำหรับการแก้ไขข้อมูล
  Future<void> updateData(String key) async {
    try {
      dbfirebase
          .child(key)
          .update({
            'status': "จองแล้ว",
          })
          .then((value) => print('Success'))
          .catchError((onError) {
            print(onError.code);
            print(onError.message);
          });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/image/bgview.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Flexible(
        child: FirebaseAnimatedList(
          query: dbfirebase,
          itemBuilder: (context, snapshot, animation, index) {
            return Container(
              height: 100,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.car_repair,
                        size: 30,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    title: Text('${snapshot.value['name']}'),
                    subtitle: Row(
                      children: [
                        Text(" Carmodel: " + '${snapshot.value['carmodel']}'),
                        //Text("Tel " + '${snapshot.value['tel']}'),
                        //Text("Date " + '${snapshot.value['date']}'),
                        Text(" Status: " + '${snapshot.value['status']}'),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              print('ลบข้อมูล');
                              dbfirebase.child(snapshot.key!).remove();
                            },
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              print('แก้ไขข้อมูล');
                              print(snapshot.key!);
                              updateData(snapshot.key!);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
