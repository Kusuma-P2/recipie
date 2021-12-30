import 'package:flutter/material.dart';
import 'package:recipie/recipie.dart';
import 'package:recipie/constant.dart';

class RecipieCard extends StatelessWidget {
  const RecipieCard({
    Key? key,
    required this.itemIndex,
    required this.recipie,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Recipie recipie;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kPrimaryColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kLightGreyColor.withOpacity(0.8),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Hero(
              tag: itemIndex,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(
                  recipie.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Recipie Name and button
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              //image takes 200 width so we are reseving it
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      recipie.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      'View Recipe',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
