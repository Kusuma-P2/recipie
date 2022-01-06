import 'package:flutter/material.dart';

import 'package:recipie/models/category.dart';
import 'package:recipie/recipiedetails/ItemCard.dart';

import 'constant.dart';

// ignore: must_be_immutable
class Selectedcategory extends StatelessWidget {
  Category selectedCategory;

  Selectedcategory({required this.selectedCategory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: kDarkColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(width: 10, height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(this.selectedCategory.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ]),
          SafeArea(
              child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: ListView.builder(
                  itemCount: this.selectedCategory.subCategories!.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (content, index) {
                    return ItemCard(
                      imgUrl: 'assets/images/' +
                          this.selectedCategory.subCategories![index].imgname +
                          '.jpg',
                      title: this.selectedCategory.subCategories![index].name,
                      subCategory: this.selectedCategory.subCategories![index]
                    );
                  }),
            ),
          ))
        ]),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
        'What\'s on your Fridge',
      ),
    );
  }
}

class Context {}
