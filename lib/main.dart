// @dart=2.9
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:recipie/OnBoard.dart';
import 'package:recipie/constant.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations(
      //[DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnBoardScreen(),
    );
  }
}
