import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class PackageLocal extends StatefulWidget {
  const PackageLocal({Key? key}) : super(key: key);

  @override
  _PackageLocalState createState() => _PackageLocalState();
}

class _PackageLocalState extends State<PackageLocal> {
  dynamic latitude = "";
  dynamic longitude = "";

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    //คำสั่งดึง Location
    var location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    print(location);
    print(location.latitude);
    print(location.longitude);

    setState(() {
      latitude = '${location.latitude}';
      longitude = '${location.longitude}';
    });

    // การแปลงละติจูดและลองจิจูดเป็นสถานที่จริง
    var address = await placemarkFromCoordinates(13.7563, 100.5018);
    print(address);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ละติจูด ' + latitude,
              style: TextStyle(fontSize: 28),
            ),
            Text(
              'ลองจิจูด ' + longitude,
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
