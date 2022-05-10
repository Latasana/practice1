import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TestingWidget());
  }
}

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  String name = 'welcome';
  List<Color> colors = [Colors.red, Colors.blue, Colors.green, Colors.black];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: colors[index],
      appBar: AppBar(
        title: const Text("my project"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30,
                color: colors[index],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  index = index == 3 ? 0 : index + 1;
                  name = "welcome";
                });
              },
              child: const Text("click me")),
        ],
      ),
    );
  }
}
