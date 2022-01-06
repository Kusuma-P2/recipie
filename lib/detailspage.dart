import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';
// ignore: unused_import
import 'package:recipie/expirey.dart';
import 'package:recipie/models/subcategory.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  SubCategory? subCategory;

  DetailsPage( {required this.subCategory});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        
        backgroundColor: Colors.black,
        body : SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 0),
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
                  Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/' +
                            widget.subCategory!.imgname +
                            '.jpg', ),
                        fit: BoxFit.cover),
                  ),
                ),
                  //ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                       widget.subCategory!.name,
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
                    widget.subCategory!.parts[0].ingredients,
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
                      widget.subCategory!.parts[0].steps,
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
                      MaterialPageRoute(builder: (context) => MyHomePage(expirey: widget.subCategory!.parts[0].expirey)),
                    )
                  },
                  child: Text('Expiry Date',
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
            
          ],
        ),
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
