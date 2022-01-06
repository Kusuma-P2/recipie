import 'package:flutter/material.dart';
import 'package:recipie/Home.dart';
import 'package:recipie/constant.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
       padding: EdgeInsets.only(bottom: 0),
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/images/food.jpg', fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 50),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/dish-2.png'),
                Text('About Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                      'This app is developed by Kusuma P and Monika K M. We are using Flutter version 1.0 and Firebase version 1.10.6',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ),
                SizedBox(height: 40),
                // ignore: deprecated_member_use
                Container(
                  margin: EdgeInsets.all(kDefaultPadding),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        )
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                              vertical: kDefaultPadding / 1.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
