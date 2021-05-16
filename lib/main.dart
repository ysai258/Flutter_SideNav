import 'package:flutter/material.dart';
import 'package:sample_side_nav/home.dart';
import 'package:sample_side_nav/profile.dart';
import 'package:sample_side_nav/videos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample SideNav',
      theme: ThemeData(
        primaryColor: Colors.green[900],
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Sidenav((int index) {
        setState(() {
          selectedIndex = index;
        });
      }, selectedIndex),
      body: Builder(
        builder: (context) {
          if (selectedIndex == 0) return HomePage();
          if (selectedIndex == 1) return Videos();
          if (selectedIndex == 2) return Profile();
          return Container();
        },
      ),
    );
  }
}

class Sidenav extends StatelessWidget {
  final Function onIndexChanged;
  final int selectedIndex;
  Sidenav(this.onIndexChanged, this.selectedIndex);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 150,
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            selectedTileColor: Colors.lightGreen[200],
            title: Text('Home'),
            leading: Text(''),
            selected: selectedIndex == 0,
            onTap: () {
              Navigator.of(context).pop();
              onIndexChanged(0);
            },
          ),
          Divider(
            color: Colors.black,
            height: 0,
          ),
          ListTile(
            selectedTileColor: Colors.lightGreen[200],
            title: Text('Videos'),
            leading: Text(''),
            selected: selectedIndex == 1,
            onTap: () {
              Navigator.of(context).pop();
              onIndexChanged(1);
            },
          ),
          Divider(
            color: Colors.black,
            height: 0,
          ),
          ListTile(
            selectedTileColor: Colors.lightGreen[200],
            title: Text('Profile'),
            leading: Text(''),
            selected: selectedIndex == 2,
            onTap: () {
              Navigator.of(context).pop();
              onIndexChanged(2);
            },
          ),
          Divider(
            color: Colors.black,
            height: 0,
          ),
        ],
      ),
    );
  }
}
