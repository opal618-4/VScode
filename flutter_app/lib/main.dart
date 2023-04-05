import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Sushi());
}

class Sushi extends StatelessWidget {
  Sushi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      theme: ThemeData(
        fontFamily: "Glacial",
        colorSchemeSeed: const Color(0xFF5AB198),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
          titleTextStyle: const TextStyle(fontSize: 16),
          
        ),
        body: Center(
          child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: FittedBox(
            //color: Color.fromARGB(255, 211, 208, 177),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 244, 246, 245),
                  backgroundColor: const Color(0xFF5AB198)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SecondPage();
                    },
                  ),
                );
              },
              child: Text('Random Item'),
            ),
          ),
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
