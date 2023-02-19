import 'package:flutter/material.dart';
import 'P2.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My application",
      home: AppBarExample(),
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
        title: const Text('Eat Taam Feel'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Let' + "'s" + ' find your meal'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute<void>(
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
                        ));
                      },
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.polymer),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      /*body: const Center(
      child: Text(
          'This is the home page'),
    */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[text, bigCir, circleButton],
        ),
      ),
    );
  }
}

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
  ),
);

Widget circleButton = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      CircleAvatar(
        radius: 60,
        backgroundColor: Colors.grey,
      ),
    ],
  ),
);

Widget bigCir = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 50),
      CircleAvatar(
        radius: 100,
        backgroundColor: Colors.green,
        child: Image.network(
          'https://picsum.photos/200/201',
          fit: BoxFit.cover,
        ),
      ),
    SizedBox(height: 50),
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
