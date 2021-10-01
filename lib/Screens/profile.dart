import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/components/rounded_button.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.booksie.com%2Ffiles%2Fprofiles%2F22%2Fmr-anonymous_230x230.png&f=1&nofb=1'),),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text("Lorem Ipsum"),
              ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 20),
              alignment: Alignment.center,
              child: Text("Lorem Ipsum Dolor si Amet"),
              ),
            RoundedButton(
              text: "Change Profile",
              press: () {},
            ),
            RoundedButton(
              text: "Log Out",
              press: () {},
            ),
          ],
        ),
      ),
    ),
  );
}
}