import 'package:flutter/material.dart';

class NextP extends StatelessWidget {
  const NextP({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 75, 149, 128),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topRight, 
                    /*child: Iconnext(
                      press: () {},
                    )*/
                    ),
                  Text("Hamburger",
                      style: TextStyle(color: Colors.white, fontSize: 40)),

                  /*Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5)
                    ),
                    child: TextField(
                      decoration: InputDecoration(icon: ),
                    ),
                  ),*/
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Column(
                          children: [
                            Image.asset('image/hamburger.png'),
                            Text("Hamburger",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18))
                          ],
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Iconnext extends StatelessWidget {
  final Function press;
  const Iconnext({
    super.key, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 52,
        width: 52,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 202, 206, 202),
          shape: BoxShape.circle,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}
