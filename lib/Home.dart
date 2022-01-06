import 'package:flutter/material.dart';
import 'constant.dart';
//import 'package:recipie/body.dart';
import 'package:recipie/categorylistpage.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("What's on your Fridge"),
        centerTitle: false,
      ),
      body: CategoryListPage(),
    );
  }
}
