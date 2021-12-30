import 'package:flutter/material.dart';
import 'package:recipie/recipie_card.dart';
import 'package:recipie/constant.dart';
import 'package:recipie/recipie.dart';
import 'package:recipie/search_box.dart';
import 'package:recipie/details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      bottom: false,
        child: Column(children: [
      SearchBox(),
      SizedBox(height: kDefaultPadding / 2),
      Expanded(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
          ),
      
      ListView.builder(
                  // here we use our demo procuts list
                  itemCount: recipies.length,
                  itemBuilder: (context, index) => RecipieCard(
                    itemIndex: index,
                    recipie: recipies[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            recipie: recipies[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

      
