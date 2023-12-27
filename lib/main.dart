import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Widget> myList = [
          Container(
            height: 300,
            width: 3000,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.yellow,
          )
        ];

    final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.yellow];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index){
          return const Divider(
            color: Colors.black,
          );
        },
        itemCount: myColor.length,
        itemBuilder: (context, index){
          return Container(
            height: 300,
            width: 300,
            color: myColor[index],
          );
        }
        )
      ),
    );
  }
}
