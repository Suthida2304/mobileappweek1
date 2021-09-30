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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
