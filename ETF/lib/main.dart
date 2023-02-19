import 'dart:math';
import 'list_Data.dart';
import 'package:flutter/material.dart';
import 'P2.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My application",
      home: AppBarExample(),
      theme: ThemeData(
        colorSchemeSeed: Color(0xFF5AB198),
      ),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menu from upabove
      appBar: AppBar(
        title: const Text('Let' + "'s" + ' find your meal'),
        actions: <Widget>[
          //IconButton(onPressed: onPressed, icon: icon)
        ],
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: text,
            ),
            MyHomePage(),
            Positioned(
              top: 170,
              child: SizedBox(
                height: 280.0,
                width: 280.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text(
                                    'Let' + "'s" + ' find your meal'),
                              ),
                              body: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    text2,
                                    randomDone,
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Random' +'\n    it',
                      style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            /*CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
            ),*/
            Positioned(
              left: 0,
              top: 80,
              child: oneCircles,
            ),
            Positioned(
              right: -50,
              top: 250,
              child: twoCircles,
            ),
            Positioned(
              left: -50,
              top: 300,
              child: threeCircles,
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------
Widget oneCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: Color(0xFFC1E2D9),
        child: Image.asset(
          'image/map.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);
Widget twoCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: Color(0xFFC1E2D9),
        child: Image.asset(
          'image/mustard.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);
Widget threeCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: Color(0xFFC1E2D9),
        child: Image.asset(
          'image/french-fries.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Widget text = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    ' Choose what filter you want to have',
    softWrap: true,
    style: TextStyle(fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
  ),
);

Widget text2 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Here is your meal!',
    softWrap: true,
    style: TextStyle(fontSize: 25,
    fontWeight: FontWeight.bold,
    ),
  ),
);
Widget randomtxt = const Padding(
  padding: EdgeInsets.zero,
  child: Text(
    ' RANDOM IT',
    softWrap: true,
  ),
);

Widget circleButton = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      /*FloatingActionButton(onPressed: ()
      {Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text(
                                    'Let' + "'s" + ' find your meal'),
                              ),
                              body: const Center(
                                child: Text(
                                  'nation food',
                                  style: TextStyle(fontSize: 24),
                                  ),
                              ),
                            );
                          },
                        ),               
                      );
      },
      ),*/
      CircleAvatar(
        radius: 60,
        backgroundColor: Colors.grey,
      ),
    ],
  ),
);

Widget randomDone = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 50),
      CircleAvatar(
        radius: 100,
        backgroundColor: Color(0xFF5ab198),
        child: Image.network(
          'https://picsum.photos/200/201',
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);

Widget otherCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
          ),
          SizedBox(width: 50),
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    ],
  ),
);
