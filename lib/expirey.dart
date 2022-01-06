import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  int expirey;
  MyHomePage({required this.expirey});
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String date = "";
  DateTime selectedDate = DateTime.now();

  var child;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("What's on your Fridge"),
      ),
      backgroundColor: kDarkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              // ignore: deprecated_member_use
              child: RaisedButton(
                elevation: 5.0,
                color: kPrimaryColor,
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                onPressed: () {
                  _selectDate(context);
                },
                child: Text(
                  "Choose Food Prepared Date",
                  style: TextStyle(
                      color: kDarkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('Expiry Date of the food is :',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: kLightFontColor,
                    fontWeight: FontWeight.bold)),
            Text(
                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: kLightFontColor,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected.add(Duration(days: widget.expirey));
      });
  }
}
