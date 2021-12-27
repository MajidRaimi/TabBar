import 'package:flutter/material.dart';
import 'package:tbar/screens/firstScreen.dart';
import 'package:tbar/screens/secondScreen.dart';
import 'package:tbar/screens/thirdScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: TabBar(
              tabs: [
                Tab(text: "FirstScreen" , ),
                Tab(text: "SecondScreen" ,),
                Tab(text: "ThirdScreen" ,),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              First() ,
              Second(),
              Third() ,
            ],
          ),
        ), length: 3,
        initialIndex: 0,

      )
    );
  }
}
