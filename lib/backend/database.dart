import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DBLocal {
  var dbname = "TCT";

  Future<Database> connectDB() async {
    //หาตำแหน่งของ Path ในตัว Mobile Device
    dynamic directory = await getApplicationDocumentsDirectory();
    // print(directory);
    var location = join(directory.path, this.dbname);
    // print(location);

    //การสร้าง DB File
    var createDB = databaseFactoryIo;
    var db = await createDB.openDatabase(location);
    //print(db);

    return db;
  }

  Future<void> register(name, surname, email, password) async {
    // print('$name $surname $email $password');
    //กระบวนการสร้าง database หรือการเปิด Database
    var db = await this.connectDB();
    // การกำหนด store
    var store = intMapStoreFactory.store('user');
    print(store);

    var user = await store.add(db, {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
      //'phone': '1234567890',
    });

    print(user);

    await store.find(db).then((response) {
      print(response);
    }).catchError((onError) {
      print(onError);
    });

    db.close();
  }

  Future<bool> login(email, password) async {
    var db = await this.connectDB();
    var store = intMapStoreFactory.store('user');

    var user = await store.find(db);

    for (var item in user) {
      print(item['name']);

      if (item['email'] == email && item['password'] == password) {
        return true;
      }
    }
    return false;
  }
}
