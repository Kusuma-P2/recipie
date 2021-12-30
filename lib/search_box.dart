import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  //final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        
        //onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          //icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
      ),
        ),
      ),
    );
  }
}
