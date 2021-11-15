import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/Carrental/available_cars.dart';
import 'package:mobileappweek1/screen/Carrental/showroom.dart';
import 'package:mobileappweek1/screen/Store/adddata.dart';
import 'package:mobileappweek1/screen/dashboard.dart';
import 'package:mobileappweek1/screen/firebaselogin.dart';
import 'package:mobileappweek1/screen/firebaseregister.dart';
import 'package:mobileappweek1/screen/index.dart';
import 'package:mobileappweek1/screen/packageimage.dart';
import 'package:mobileappweek1/screen/packagelocal.dart';
import 'package:mobileappweek1/screen/packagevideo.dart';
import 'package:mobileappweek1/screen/store.dart';
import 'screen/index.dart';

/*void main() {
  runApp(MyApp());
}*/
Future<void> main() async {
  //เปิด Connection Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Index': (context) => Index(),
        'Login': (context) => FirebaseLogin(),
        'Register': (context) => FirebaseRegister(),
        'Dashboard': (context) => Dashboard(),
        //'Image': (context) => PackageImage(),
        'Video': (context) => PackageVideo(),
        // 'Location': (context) => PackageLocal(),
        'Store': (context) => Store(),
        'Showroom': (context) => Showroom(),
        'AvailableCars': (context) => AvailableCars(),
        'Adddata': (context) => Adddata(),
      },
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
    );
  }
}
