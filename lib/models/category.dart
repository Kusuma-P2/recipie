import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:recipie/models/subcategory.dart';


class Category {
  String name;
  String imgname;
  Color? color;
  List<SubCategory>? subCategories;

  Category({this.name='', this.imgname = '', this.color, this.subCategories, });

  

}
