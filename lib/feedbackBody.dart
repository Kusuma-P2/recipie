import 'package:flutter/material.dart';
import 'package:recipie/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Body extends StatelessWidget {
  /*Body({
    Key? key,
  }) : super(key: key);*/

  CollectionReference feed = FirebaseFirestore.instance.collection('Feedback');
  String name = '';
  int phoneno = 0;
  String sug = '';

  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        onChanged: (value) {
          name = value;
        },
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Name',
        ),
      ),
    );
  }

  Widget _buildPhone() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        
        keyboardType: TextInputType.phone,
        maxLength: 10,
        decoration: InputDecoration(
          labelText: 'Phone No',
        ),
        onChanged: (value) {
          phoneno = int.parse(value);
        },
      ),
    );
  }

  Widget _buildFeed() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        onChanged: (value) {
          sug = value;
        },
        keyboardType: TextInputType.text,
        maxLines: 2,
        decoration: InputDecoration(
          labelText: 'Suggestions',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkGreyColor,
        body: Stack(
          children: [
            Container(
              height: size.height * 0.6,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70),
                    )),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'FeedBack',
                                    style: TextStyle(
                                      fontSize: size.height / 30,
                                      color: kDarkColor,
                                    ),
                                  ),
                                ],
                              ),
                              _buildName(),
                              _buildPhone(),
                              _buildFeed(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 1.4 * (size.height / 20),
                                    width: 5 * (size.width / 10),
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: RaisedButton(
                                      elevation: 5.0,
                                      color: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      onPressed: () async {
                                        await feed.add({
                                          "name": name,
                                          "phone": 8523001234,
                                          "suggestion": sug
                                        }).then((value) => print("Added"));
                                      },
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          letterSpacing: 1.5,
                                          fontSize: size.height / 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
