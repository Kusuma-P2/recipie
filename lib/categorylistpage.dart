import 'package:flutter/material.dart';
import 'package:recipie/helper/Utils.dart';
import 'package:recipie/models/category.dart';
import 'package:recipie/categorycard.dart';
import 'package:recipie/constant.dart';
import 'package:recipie/selectedcategory.dart';

class CategoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = Utils.getMockedCategories();

    return Scaffold(
      backgroundColor: kDarkGreyColor,
      drawer: Drawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Category',
                textAlign: TextAlign.center,
                style: TextStyle(color: kLightFontColor, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 100),
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Selectedcategory(
                                selectedCategory: categories[index],
                              )),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
