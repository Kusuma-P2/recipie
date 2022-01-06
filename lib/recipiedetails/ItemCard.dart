import 'package:flutter/material.dart';
import 'package:recipie/detailspage.dart';
import 'package:recipie/models/subcategory.dart';

class ItemCard extends StatelessWidget {
  final String imgUrl, title;
  final SubCategory? subCategory;
  const ItemCard(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.subCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsPage(subCategory: subCategory)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imgUrl,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            Text(
              title,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
