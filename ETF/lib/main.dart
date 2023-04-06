import 'list_Data.dart';
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
      'ราเมน',
      'พิซซ่า',
      'สปาเก็ตตี้',
      'สเต็ก',
      'พแนงหมู',
      'ปลานึ่งซีอิ๊ว',
      'ผัดเต้าหู้เสฉวน',
      'กระเพาะปลา',
      'โอโคโนมิยากิ',
      'โคร็อกเกะ',
      'ซาชิมิ'
    ];
    List Img = [
      'image/แกงเขียวหวาน.jpg',
      'image/ข้าวผัดกุ้ง.png',
      'image/tomyum.png',
      'image/eggpaloa.png',
      'image/japan.png',
      'image/padseyew.png',
      'image/salmon.png',
      'image/ข้าวมันไก่.png',
      'image/hotpot.png',
      'image/ส้มตำ.png',
      'image/หมูกระเทียม.png',
      'image/curry.png',
      'image/ผัดกระเพรา.png',
      'image/ข้าวหน้าปลาไหล.png',
      'image/ราเมน.png',
      'image/pizza.jpg',
      'image/spa.jpg',
      'image/steak.jpg',
      'image/พแนงหมู.jpg',
      'image/ปลานึ่งซีอิ๊ว.jpg',
      'image/ผัดเต้าหู้เสฉวน.jpg',
      'image/กระเพาะปลา.jpg',
      'image/okonomi.png',
      'image/โคร็อกเกะ.png',
      'image/ซาชิมิ.png'
    ];
    List thName = [
      'แกงเขียวหวาน',
      'ข้าวผัด',
      'ต้มยำ',
      'ไข่พะโล้',
      'ผัดซีอิ๊ว',
      'ข้าวมันไก่',
      'ส้มตำ',
      'ข้าวหมูกระเทียมไข่ดาว',
      'ผัดกระเพรา',
      'พแนงหมู'
    ];
    List thImg = [
      'image/แกงเขียวหวาน.png',
      'image/ข้าวผัดกุ้ง.png',
      'image/tomyum.png',
      'image/eggpaloa.png',
      'image/padseyew.png',
      'image/ข้าวมันไก่.png',
      'image/ส้มตำ.png',
      'image/หมูกระเทียม.png',
      'image/ผัดกระเพรา.png',
      'image/พแนงหมู.jpg'
    ];
    List jpName = [
      'ซูชิ',
      'ข้าวหน้าแซลมอน',
      'Suki Hotpot',
      'ข้าวหน้าแกงกะหรี่',
      'ข้าวหน้าปลาไหล',
      'ราเมน',
      'โอโคโนมิยากิ',
      'โคร็อกเกะ',
      'ซาชิมิ'
    ];
    List jpImg = [
      'image/japan.png',
      'image/salmon.png',
      'image/hotpot.png',
      'image/curry.png',
      'image/ข้าวหน้าปลาไหล.png',
      'image/ราเมน.png',
      'image/okonomi.png',
      'image/โคร็อกเกะ.png',
      'image/ซาชิมิ.png'
    ];
    List chName = [
      'ติ่มซำ',
      'เป็ดปักกิ่ง',
      'หมี่ซั่ว',
      'หม่าล่า',
      'ปลานึ่งซีอิ๊ว',
      'ผัดเต้าหู้เสฉวน',
      'กระเพาะปลา'
    ];
    List chImg = [
      'image/ติ่มซำ.jpg',
      'image/เป็ด.jpg',
      'image/หมี่ซั่ว.jpg',
      'image/mala.jpg',
      'image/ปลานึ่งซีอิ๊ว.jpg',
      'image/ผัดเต้าหู้เสฉวน.jpg',
      'image/กระเพาะปลา.jpg'
    ];
    final List<menu> foods = List.generate(
        Fname.length, (index) => menu('${Fname[index]}', '${Img[index]}'));
    final List<menu> thfoods = List.generate(
        thName.length, (index) => menu('${thName[index]}', '${thImg[index]}'));
    final List<menu> jpfoods = List.generate(
        jpName.length, (index) => menu('${jpName[index]}', '${jpImg[index]}'));
    final List<menu> chfoods = List.generate(
        chName.length, (index) => menu('${chName[index]}', '${chImg[index]}'));

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
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/11.png'), fit: BoxFit.cover),
              ),
            ),
            //const MyHomePage(),
            Positioned(
              top: 120,
              child: SizedBox(
                height: 300.0,
                width: 300.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn1",
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
                                title: const Text('นี่คืออาหารของคุณ!'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('image/11.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
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
                                                  0, 255, 255, 255),
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
                                                  textWidthBasis: TextWidthBasis
                                                      .longestLine,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 90, 135, 116)),
                                                ),
                                              )
                                            ],
                                          ),
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
            Positioned(
              bottom: 120,
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn2",
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Color(0xFFA9D7DA))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            final _random = new Random();
                            int indexs = _random.nextInt(thfoods.length);
                            String thpic = thImg[indexs];
                            String thname = thName[indexs];
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('นี่คืออาหารของคุณ!'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('image/11.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  randomTh = Container(
                                    padding: const EdgeInsets.all(50),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                          width: 150,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Positioned(
                                                  child: Image.asset(thpic),
                                                ),
                                                Positioned(
                                                  top: 100,
                                                  left: 150,
                                                  child: Text(
                                                    '$thname',
                                                    textWidthBasis:
                                                        TextWidthBasis
                                                            .longestLine,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 90, 135, 116)),
                                                  ),
                                                )
                                              ],
                                            )),
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
                    backgroundColor: const Color(0xFFA9D7DA),
                    child: const Text(
                      'อาหารไทย',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 105, 134, 136)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              bottom: 120,
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn3",
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Color(0xFFFFF4B7))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            final _random = new Random();
                            int indexs = _random.nextInt(jpfoods.length);
                            String jppic = jpImg[indexs];
                            String jpname = jpName[indexs];
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('นี่คืออาหารของคุณ!'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('image/11.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  randomTh = Container(
                                    padding: const EdgeInsets.all(50),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                          width: 150,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Positioned(
                                                  child: Image.asset(jppic),
                                                ),
                                                Positioned(
                                                  top: 100,
                                                  left: 150,
                                                  child: Text(
                                                    '$jpname',
                                                    textWidthBasis:
                                                        TextWidthBasis
                                                            .longestLine,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 90, 135, 116)),
                                                  ),
                                                )
                                              ],
                                            )),
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
                    backgroundColor: const Color(0xFFFFF4B7),
                    child: const Text(
                      'อาหารญี่ปุ่น',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFCB8E46)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 120,
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn4",
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: BorderSide(color: Color(0xFFF5CAC3)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            final _random = new Random();
                            int indexs = _random.nextInt(chfoods.length);
                            String chpic = chImg[indexs];
                            String chname = chName[indexs];
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('นี่คืออาหารของคุณ!'),
                              ),
                              body: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('image/11.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  randomDone = Container(
                                    padding: const EdgeInsets.all(50),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                          width: 150,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Positioned(
                                                  child: Image.asset(chpic),
                                                ),
                                                Positioned(
                                                  top: 100,
                                                  left: 150,
                                                  child: Text(
                                                    '$chname',
                                                    textWidthBasis:
                                                        TextWidthBasis
                                                            .longestLine,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 90, 135, 116)),
                                                  ),
                                                )
                                              ],
                                            )),
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
                    backgroundColor: const Color(0xFFF5CAC3),
                    child: const Text(
                      'อาหารจีน',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 162, 136, 131)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 35,
              child: mapCircles,
            ),
            Positioned(
              right: -40,
              top: 220,
              child: mustardCircles,
            ),
            Positioned(left: -50, top: 280, child: frenchCircles),
            Positioned(
                left: 40,
                bottom: 250,
                child: Text("เลือกสัญชาติอาหาร",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 81, 145, 118)))),
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

Widget randomTh = Container(
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
      ),
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
