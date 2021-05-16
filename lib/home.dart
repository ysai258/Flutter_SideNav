import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LVHome(),
    );
  }
}

class LVHome extends StatefulWidget {
  @override
  _LVHomeState createState() => _LVHomeState();
}

class _LVHomeState extends State<LVHome> {
  var titles = [
    'This is Heading of the ralte new ws this is and go on',
    'This is Heading of the realte',
    'This is Heading of the ralte new ws this is and go on',
    'This is Heading of the ralte new ws this is and go on',
    'This is Heading of the ralte new ws this is and go on',
  ];
  var descp = [
    'This is Heading of the realted new ws this is another Heading of the',
    'This is Heading of the realted new ws this is another Heading of the this will go like this when nothing',
    'This is Heading of the realted new ws this is another Heading of the',
    'This is Heading of the realted new ws this is another Heading of the',
    'This is Heading of the realted new ws this is another Heading of the',
  ];
  var img = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg',
    'assets/images/img5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      img[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: width,
                            child: Text(
                              titles[index],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            child: Text(
                              descp[index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              softWrap: false,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '03-03-2021',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Container(
                                  width: width * 0.30,
                                  color: Colors.deepOrange,
                                  child: Center(
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.bookmark_border,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
