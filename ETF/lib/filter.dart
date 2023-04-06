/*import 'list_Data.dart';
import 'menu.dart';
import 'nation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
// filter 
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
    List Fname = [
      'แกงเขียวหวาน',
      'ข้าวผัด',
      'ต้มยำ',
      'ไข่พะโล้',
      'ซูชิ',
      'ผัดซีอิ๊ว',
      'ข้าวหน้าแซลมอน',
      'ข้าวมันไก่',
      'Suki Hotpot',
      'ส้มตำ',
      'ข้าวหมูกระเทียมไข่ดาว',
      'ข้าวหน้าแกงกะหรี่',
      'ผัดกระเพรา',
      'ข้าวหน้าปลาไหล',
      'ราเมน'
    ];
    List Img = [
      'image/แกงเขียวหวาน.jpeg',
      'image/ข้าวผัดกุ้ง.jpg',
      'image/ต้มยำ.jpeg',
      'image/eggpaloa.png',
      'image/japan.png',
      'image/padseyew.png',
      'image/salmon.png',
      'image/ข้าวมันไก่.jpg',
      'image/hotpot.png',
      'image/ส้มตำ.jpg',
      'image/หมูกระเทียม.jpg',
      'image/curry.png',
      'image/ผัดกระเพรา.jpg',
      'image/ข้าวหน้าปลาไหล.png',
      'image/ราเมน.png'
    ];
    final List<menu> foods = List.generate(
        Fname.length, (index) => menu('${Fname[index]}', '${Img[index]}'));

    return Scaffold(
      // menu from upabove
      // appBar: AppBar(
      // title: const Text('Let' "'s" ' find your meal'),
      // actions: <Widget>[
      //     //IconButton(onPressed: onPressed, icon: icon)
      //   ],
      // ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: text,
            ),
            const MyHomePage(),
            Positioned(
              top: 120,
              child: SizedBox(
                height: 300.0,
                width: 300.0,
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
                                title:
                                    const Text('นี่คืออาหารของคุณ!'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  /*Container(
                                    height: size.height * .45,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 193, 195, 166),
                                    ),
                                  ),*/
                                  randomDone = Container(
                                    padding: const EdgeInsets.all(50),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                          width: 50,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Positioned(
                                                  child: Image.asset(pic),
                                                ),
                                                Positioned(
                                                  top: 100,
                                                  left: 150,
                                                  child: Text(
                                                    '$name',
                                                    textWidthBasis:
                                                        TextWidthBasis
                                                            .longestLine,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 90, 135, 116)
                                                  ),
                                                ),
                                              )
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
            Positioned(
              left: 0,
              top: 50,
              child: mapCircles,
            ),
            Positioned(
              right: -30,
              top: 250,
              child: mustardCircles,
            ),
            Positioned(left: -50, top: 280, child: frenchCircles),
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Filternation(),
                  ));
            },
          ),
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

Widget mapCircles = Container(
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
Widget mustardCircles = Container(
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
          onDoubleTap: () {},
          child: Image.asset(
            'image/mustard.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  ),
);
Widget frenchCircles = Container(
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
          'image/french-fries.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);

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


//BottomBarrrrrrrrrrrr
// class _mytabBarWidget extends State<ETF> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Indexe 0: Home',
//       style: optionStyle,
//     ),
//     Text('Indexe 1: none', style: optionStyle),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }
*/
