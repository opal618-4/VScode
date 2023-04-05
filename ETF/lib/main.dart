//import 'list_Data.dart';
import 'menu.dart';
import 'nation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My application",
      home: const ETF(),
      theme: ThemeData(
        fontFamily: "Glacial",
        colorSchemeSeed: const Color(0xFF5AB198),
      ),
    );
  }
}

class ETF extends StatelessWidget {
  const ETF({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //var list = ['a', 'b', 'c'];
    List Fname = ['a', 'b', 'c'];
    List Img = [
      'image/แกงเขียวหวาน.jpeg',
      'image/ข้าวผัด.jpg',
      'image/ต้มยำ.jpeg'
    ];
    final List<menu> foods = List.generate(
        Fname.length, (index) => menu('${Fname[index]}', '${Img[index]}'));

    return Scaffold(
      // menu from upabove
      //appBar: AppBar(
      //title: const Text('Let' "'s" ' find your meal'),
      /*actions: <Widget>[
          //IconButton(onPressed: onPressed, icon: icon)
        ],*/
      //),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: text,
            ),
            const NationPage(),
            Positioned(
              top: 250,
              child: SizedBox(
                height: 150.0,
                width: 150.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            final _random = new Random();
                            int index = _random.nextInt(foods.length);
                            var va = foods[index];
                            String pic = Img[index];
                            String name = Fname[index];
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('Let' "'s" ' find your meal'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  /*Container(
                                    height: size.height * .45,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 193, 195, 166),
                                    ),
                                  ),*/
                                  text2,
                                  randomDone = Container(
                                    padding: const EdgeInsets.all(50),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 50,
                                          width: 50,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 118, 173, 150),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Image.asset(pic),
                                                Text('$name',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255)),
                                                ),
                                              ],
                                            )
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                    backgroundColor: const Color(0xFF5AB198),
                    child: const Text(
                      'Random' '\n    it',
                      style:
                          TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            /*CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
            ),*/
            /*Positioned(
              left: 0,
              top: 80,
              child: oneCircles,
            ),
            Positioned(
              right: -50,
              top: 250,
              child: twoCircles,
            ),*/
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------
class FilterCir extends StatefulWidget {
  const FilterCir({super.key});

  @override
  State<FilterCir> createState() => FilterCirState();
}

class FilterCirState extends State<FilterCir> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Let' "'s" ' find your meal'),
                      ),
                      body: Stack(
                        children: <Widget>[
                          Container(
                            height: size.height * .45,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 193, 195, 166),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF5AB198)),
            ),
            child: const Text(
              'Filter your meal',
              style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------
class ClickCircle extends StatefulWidget {
  const ClickCircle({super.key});

  @override
  State<FilterCir> createState() => FilterCirState();
}

class ClickCircleState extends State<FilterCir> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /*InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Filternation(),
                  ));
            },
          ),*/
          const SizedBox(height: 20, width: 40),
          CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xFFC1E2D9),
            child: Image.asset(
              'image/map.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(0),
    child: AspectRatio(
      aspectRatio: 0.85,
      child: PageView.builder(
        itemBuilder: (context, index) => Container(
          color: Color(0xFFC1E2D9),
        ),
      ),
    ),
  );
}
/*Widget oneCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      const SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: const Color(0xFFC1E2D9),
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
      const SizedBox(height: 20),
      const SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: const Color(0xFFC1E2D9),
        child: GestureDetector(
          onDoubleTap: () => const Filtertaste(),
          child: Image.asset(
            'image/mustard.png',
            fit: BoxFit.cover,
          ),
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
      const SizedBox(height: 20),
      const SizedBox(width: 40),
      CircleAvatar(
        radius: 60,
        backgroundColor: const Color(0xFFC1E2D9),
        child: GestureDetector(
          onDoubleTap: () => const Filtertype(),
          child: Image.asset(
            'image/french-fries.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  ),
);*/

Widget text = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    ' Choose what filter you want to have',
    softWrap: true,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
);

Widget text2 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Here is your meal!',
    softWrap: true,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
);
Widget randomtxt = const Padding(
  padding: EdgeInsets.all(50),
  child: Text(
    ' RANDOM IT',
    softWrap: true,
  ),
);

Widget circleButton = Container(
  padding: const EdgeInsets.all(32),
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
      const CircleAvatar(
        radius: 60,
        backgroundColor: Colors.grey,
      ),
    ],
  ),
);

Widget randomDone = Container(
  padding: const EdgeInsets.all(50),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(height: 50),
      Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 118, 173, 150),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              //Image.asset('image/hamburger.png'),
              const Text(
                "Hamburger",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          )),
    ],
  ),
);
Widget txtrandomDone = Container(
  padding: const EdgeInsets.all(50),
  child: Align(
    alignment: AlignmentDirectional.center,
    child: randomDone,
  ),
);

Widget otherCircles = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
          ),
          const SizedBox(width: 50),
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    ],
  ),
);

class PageSecond extends Container {}
