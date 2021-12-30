import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';
import 'package:recipie/feedback.dart';
import 'package:recipie/recipie.dart';
import 'package:recipie/recipiedetails/foodimg.dart';

class Body extends StatelessWidget {
  final Recipie recipie;
  const Body({Key? key, required this.recipie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    

    return SafeArea(
        bottom: false,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kDarkColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                BoxShadow(
                  color: kPrimaryColor,
                  offset: Offset(0, 5),
                  blurRadius: 6.0,
                ),
              ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${recipie.id}',
                      child: FoodPoster(
                        size: size,
                        image: recipie.image,
                      ),
                    ),
                  ),
                  //ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      recipie.title,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
              
                    ),
                  ),
                  Text(
                    "Ingredients :",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    recipie.ingredients,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Steps :",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      recipie.steps,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(kDefaultPadding),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedBack()),
                    )
                  },
                  child: Text('Feedback',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 1.5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
            ),
            /*Container(
              margin: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('Video',
                    style: TextStyle(color: Colors.black, fontSize: 18,),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 1.5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),
                  ),
                ),
              ),*/
            
          ],
        ),
        ),
        );
  }
}
