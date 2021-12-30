import 'package:flutter/material.dart';

import 'package:recipie/constant.dart';
import 'package:recipie/feedbackBody.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      appBar: buildAppBar(context),
      body: Body(),
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