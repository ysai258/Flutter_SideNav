import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoPlayer();
  }
}

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  var titles = [
    'This is Heading of the realted new ws thi is another',
    'This is Heading of the realte',
    'This is Heading of the ralte new ws this is and go on',
  ];
  var descp = [
    'This is Heading of the realted new ws this is another Heading of the',
    'This is Heading of the realted new ws this is another Heading of the this will go like this when nothing',
    'This is Heading of the realted new ws this is another Heading of the',
  ];
  var img = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
  ];
  int topIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Videos',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              img[topIndex],
              height: height * 0.25,
              width: width,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: width * 0.9,
                  child: Text(
                    titles[topIndex],
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Date & Time',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  width: width * 0.9,
                  child: Text(
                    descp[topIndex],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (s) => Colors.grey[300])),
                      child: Center(
                        child: Text(
                          'Information',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        topIndex = index;
                      });
                    },
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
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: width * 0.6,
                                  child: Text(
                                    titles[index],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.6,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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
                                        width: width * 0.15,
                                        color: Colors.deepOrange,
                                        child: Center(
                                          child: Text(
                                            'Info',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ));
  }
}
