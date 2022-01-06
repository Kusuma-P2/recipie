import 'dart:ui';
import 'package:recipie/models/category.dart';
import 'package:recipie/models/categorypart.dart';
import 'categorypart.dart';

class SubCategory extends Category {
  List<CategoryPart> parts;

  SubCategory({
    required this.parts,
    String name = '',
    String imgname = '',
    Color? color,
  }) : super(
          name: name,
          color: color,
          imgname: imgname,
        );
}
