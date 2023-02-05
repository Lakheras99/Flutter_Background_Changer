import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(actions: [], title: Text('Background Color')),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.red,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Color.fromARGB(255, 146, 119, 112),
    Color.fromARGB(255, 48, 49, 38),
    Color(0xff231341)
  ];
  var currentColor = Colors.white;


    setRandomColor() {
      var rdm = Random().nextInt(color.length);
      setState(() {
        currentColor = color[rdm];
      });
    }




  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;

    return Container(
      // height: h,
      // width: w,
      decoration: BoxDecoration(color: currentColor),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color(0xff121011)),
            onPressed: () {
              setRandomColor();
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
                right: 30,
                bottom: 10,
              ),
              child: Text('Change ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
