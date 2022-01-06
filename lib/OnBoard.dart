import 'package:flutter/material.dart';
import 'package:recipie/About.dart';

import 'package:recipie/constant.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen();

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/pic8.png"),
          ),
          SizedBox(height:0),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 32,
              right: 32.0,
              bottom: 32.0,
            ),
            padding: EdgeInsets.symmetric(vertical: 32.0),
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  color: kDarkColor,
                  offset: Offset(0, 8),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "What's on your \n Fridge",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    color: kLightFontColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                Text(
                  "No more confusion about\n  what to cook",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kLightFontColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 28.0),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                  ),
                  child: Container(
                    height: 52.0,
                    width: 230.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      "Let's Go",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
