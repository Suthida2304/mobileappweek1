import 'package:flutter/material.dart';
import 'package:mobileappweek1/screen/Store/adddata.dart';
import 'package:mobileappweek1/screen/Store/viewdata.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Store",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Adddata(),
            Viewdata(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.grey[800],
          child: TabBar(
            indicatorColor: Colors.lightBlue,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Add DATA",
              ),
              Tab(
                text: "View DATA",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
