import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/model/tct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;

  @override
  void initState() {
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);

    setState(() {
      data = tctFromJson(response.body);
    });
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    print('True');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white70,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown.shade500,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.blue,
                size: 35,
              ),
              onTap: () {
                print("Menu Video");
                Navigator.pushNamed(context, 'Video');
              },
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown.shade500,
                ),
              ),
              leading: Icon(
                Icons.image_aspect_ratio_sharp,
                color: Colors.red,
                size: 35,
              ),
              onTap: () {
                print("Menu Image");
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown.shade500,
                ),
              ),
              leading: Icon(
                Icons.local_car_wash_outlined,
                color: Colors.green,
                size: 35,
              ),
              onTap: () {
                print("Menu Location");
                Navigator.pushNamed(context, 'Location');
              },
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.red,
              ),
              onTap: () {
                logout();
                Navigator.of(context).pop();
                Navigator.pushNamed(context, 'index', arguments: []);
                print("Logout Success");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.api),
            SizedBox(width: 10),
            Text('Dashboard'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1517273006195-51fa3364bce2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=773&q=80"),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              data?.activity ?? "loading..",
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              data?.type ?? '',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.price ?? ""}',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.participants ?? ""}',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
