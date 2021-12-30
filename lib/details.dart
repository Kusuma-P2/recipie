import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';
import 'package:recipie/recipie.dart';

import 'package:recipie/recipiedetails/body.dart';

class DetailsScreen extends StatelessWidget {
  final Recipie recipie;

  const DetailsScreen({Key? key, required this.recipie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkGreyColor,
      appBar: buildAppBar(context),
      body: Body(
        recipie: recipie,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: false,
      title: Text('What\'s on your Fridge' ,),
    
    );
  }
}
