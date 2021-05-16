import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          child: Column(children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3,
                    color: Colors.orange,
                  ),
                ),
                child: Image.asset(
                  'assets/images/usericon.png',
                  height: 120.0,
                  width: 120.0,
                ),
                padding: EdgeInsets.all(1)),
            Text(
              'Yashwanth Sai Muppineni',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ))
          ]),
          constraints: BoxConstraints(minHeight: 240),
          padding: EdgeInsets.all(20.0),
          color: Colors.grey[200],
          alignment: Alignment.center,
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Location', style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Pincode', style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'xxxxxx'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Date of Birth',
                      style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'dd-mm-yy'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Gender', style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Male'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Whatsapp', style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: '+91 - xxxxxxxxxx'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email', style: TextStyle(color: Colors.grey))),
              TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'xxxxxxxxxxxx@gmail.com'),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
